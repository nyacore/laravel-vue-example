<template>
  <v-layout wrap row align-center justify-start>
    <v-flex grow xs3 v-for="post in posts" :key="post.id">
      <v-card class="ma-2" dark>
        <v-img v-bind:src="'http://kalistratov.bitimephi.ru/' + post.image" aspect-ratio="2.75"></v-img>

        <v-card-title primary-title>
          <div>
            <h3 class="headline mb-0">{{ post.title }}</h3>
            <div>{{ post.text }}</div>
          </div>
        </v-card-title>

        <v-card-actions v-if="isTokenPresent">
          <v-btn flat color="orange" :to="{ path: '/edit/' + post.id  }">Edit</v-btn>
          <v-btn flat color="orange" @click="deletePost(post.id)">Delete</v-btn>
        </v-card-actions>
      </v-card>
    </v-flex>
  </v-layout>
</template>

<script>
export default {
  data() {
    return {
      posts: [],
      drawer: false,
      isTokenPresent: false
    };
  },
  mounted() {
    this.updateToken();
    this.getPosts();
  },
  watch: {
    $route: "getData"
  },
  methods: {
    getData() {
      updateToken();
      getPosts();
    },
    updateToken() {
      if (window.localStorage.getItem("token")) {
        this.token = window.localStorage.getItem("token");
        this.isTokenPresent = true;
      } else {
        this.token = "";
        this.isTokenPresent = false;
      }
    },
    getPosts() {
      this.posts = [];
      fetch("http://kalistratov.bitimephi.ru/api/posts")
        .then(r => r.json())
        .then(result => {
          this.posts = result.reverse();
          console.log(this.posts);
        });
    },
    deletePost(id) {
      fetch(`http://kalistratov.bitimephi.ru/api/posts/${id}`, {
        method: "DELETE",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${window.localStorage.getItem("token")}`
        }
      })
        .then(r => r.json())
        .then(result => {
          this.getPosts();
        });
    }
  },
  props: {
    source: String
  }
};
</script>

<style>
</style>
