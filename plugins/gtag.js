import Vue from 'vue'
import VueGtag from 'vue-gtag'

Vue.use(VueGtag, {
    // environment variable is stored in digital ocean as a secret.
    config: { id: process.env.G_ANALYTICS }
})