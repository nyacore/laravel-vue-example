<template>
  <v-app id="inspire" dark>
    <v-navigation-drawer v-model="drawer" clipped fixed app>
      <v-list dense>
        <v-list-tile v-if="!isTokenPresent" :to="{ name: 'Auth' }">
          <v-list-tile-action>
            <v-icon>face</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Sign In</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile :to="{ name: 'Home' }">
          <v-list-tile-action>
            <v-icon>home</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Main Page</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile v-if="isTokenPresent" :to="{ name: 'CreatePost' }">
          <v-list-tile-action>
            <v-icon>add_circle_outline</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>New post</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile v-if="isTokenPresent" :to="{ name: 'LogOut' }">
          <v-list-tile-action>
            <v-icon>lock</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Log Out</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>
    <v-toolbar app fixed clipped-left>
      <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title>Blog CRUD Client</v-toolbar-title>
      <v-spacer></v-spacer>
      <v-toolbar-title v-if="isTokenPresent">Your token is: {{ token }}</v-toolbar-title>
    </v-toolbar>
    <v-content>
      <v-container>
        <router-view></router-view>
      </v-container>
    </v-content>
    <v-footer app fixed>
      <span>&copy; 2019</span>
    </v-footer>
  </v-app>
</template>


<script>
export default {
  data() {
    return {
      isTokenPresent: false,
      drawer: false,
      token: ""
    };
  },
  watch: {
    $route: "updateToken"
  },
  mounted() {
    this.updateToken();
  },
  methods: {
    updateToken() {
      if (window.localStorage.getItem("token")) {
        this.token = window.localStorage.getItem("token");
        this.isTokenPresent = true;
      } else {
        this.token = "";
        this.isTokenPresent = false;
      }
    }
  }
};
</script>

<style>
</style>