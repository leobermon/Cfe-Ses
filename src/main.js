import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";
import "./assets/tailwind.css";
import { createPinia }  from 'pinia'
import VueLazyLoad from 'vue3-lazyload'

const app = createApp(App);

app.use(router);
app.use(createPinia());
app.use(VueLazyLoad, {})
app.mount("#app");







