<template>
  <v-layout wrap row>
    <v-flex xs6>
      <v-alert
        transition="slide-x-transition"
        :value="errorMessage.length > 0"
        type="error"
      >{{ errorMessage }}</v-alert>
      <v-form ref="form" v-model="valid" lazy-validation>
        <v-text-field v-model="login" :counter="32" :rules="notEmptyRules" label="Login" required></v-text-field>
        <v-text-field
          v-model="password"
          :counter="32"
          :rules="notEmptyRules"
          label="Password"
          required
        ></v-text-field>

        <v-btn :disabled="!valid" flat color="orange" @click="validate">Submit</v-btn>
      </v-form>
    </v-flex>
  </v-layout>
</template>

<script>
import { log } from "util";
export default {
  data() {
    return {
      errorMessage: "",
      valid: true,
      login: "",
      password: "",
      notEmptyRules: [value => !!value || "This field is required"]
    };
  },
  methods: {
    validate() {
      if (this.$refs.form.validate()) {
        this.snackbar = true;
        this.submitForm();
      }
    },
    submitForm() {
      fetch("http://kalistratov.bitimephi.ru/api/auth", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          login: this.login,
          password: this.password
        })
      })
        .then(r => r.json())
        .then(result => {
          if (result.status) {
            window.localStorage.setItem("token", result.token);
            this.$router.push({ name: "Home" });
          } else {
            this.errorMessage = result.message;
          }
        })
        .catch(); // Do nothing
    }
  }
};
</script>

<style>
</style>
