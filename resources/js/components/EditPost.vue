<template>
  <v-layout wrap row>
    <v-flex xs6>
      <v-form ref="form" v-model="valid" lazy-validation>
        <v-text-field v-model="title" :counter="32" :rules="notEmptyRules" label="Title" required></v-text-field>
        <v-textarea :counter="255" v-model="text" :rules="notEmptyRules" label="Text" required></v-textarea>
        <!-- <v-input label="Image">
          <upload-button title="Browse" :selectedCallback="fileSelectedFunc"></upload-button>
        </v-input>-->
        <v-text-field
          v-model="image"
          :counter="255"
          :rules="notEmptyRules"
          label="Image URL"
          required
        ></v-text-field>

        <v-btn :disabled="!valid" flat color="orange" @click="validate">Submit</v-btn>
      </v-form>
    </v-flex>
  </v-layout>
</template>

<script>
import UploadButton from "./UploadButton";

export default {
  components: {
    UploadButton
  },
  data() {
    return {
      id: this.$route.params.id,
      image: "",
      valid: true,
      title: "",
      text: "",
      notEmptyRules: [value => !!value || "This field is required"]
    };
  },
  mounted() {
    fetch(`http://neo/api/posts/${this.id}`, {
      method: "GET",
      headers: {
        Accept: "application/json"
      }
    })
      .then(r => r.json())
      .then(result => {
        this.title = result.title;
        this.text = result.text;
      });
  },
  methods: {
    // fileSelectedFunc(f) {
    //   this.file = f;
    // },
    validate() {
      if (this.$refs.form.validate()) {
        this.snackbar = true;
        this.submitForm();
      }
    },
    submitForm() {
      // const formData = new FormData();
      // formData.append("title", this.title);
      // formData.append("text", this.text);
      // formData.append("image", this.image);
      fetch(`http://neo/api/posts/${this.id}`, {
        method: "PUT",
        headers: {
          Authorization: `Bearer ${window.localStorage.getItem("token")}`,
          Accept: "application/json",
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          title: this.title,
          text: this.text,
          image: this.image
        })
      })
        .then(r => r.json())
        .then(this.$router.push({ name: "Home" }))
        .catch(err => console.log(err));
    }
  }
};
</script>

<style>
</style>
