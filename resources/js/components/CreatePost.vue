<template>
  <v-layout wrap row>
    <v-flex xs6>
      <v-form ref="form" v-model="valid" lazy-validation>
        <v-text-field v-model="title" :counter="32" :rules="notEmptyRules" label="Title" required></v-text-field>
        <v-textarea :counter="255" v-model="text" :rules="notEmptyRules" label="Text" required></v-textarea>
        <v-input label="Image">
          <upload-button title="Browse" :selectedCallback="fileSelectedFunc"></upload-button>
        </v-input>

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
      file: null,
      valid: true,
      title: "",
      text: "",
      notEmptyRules: [value => !!value || "This field is required"]
    };
  },
  methods: {
    fileSelectedFunc(f) {
      this.file = f;
    },
    validate() {
      if (this.$refs.form.validate()) {
        this.snackbar = true;
        this.submitForm();
      }
    },
    submitForm() {
      const formData = new FormData();
      formData.append("title", this.title);
      formData.append("text", this.text);
      formData.append("image", this.file);
      fetch("http://neo/api/posts", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${window.localStorage.getItem("token")}`,
          Accept: "application/json"
        },
        body: formData
      })
        .then(r => r.json())
        .then(this.$router.push({ name: "Home" }));
    }
  }
};
</script>

<style>
</style>
