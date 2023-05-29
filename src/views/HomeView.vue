<template>
  <main class="container ">

    <div class="grid gap-4 md:grid-cols-2 py-4 "  >
      <div
        class="block max-w-sm p-6 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-700 cursor-pointer " @click="changeRoute('subestaciones')">
        <img src="../assets/img/se.jpg" class="h-30 w-30" />
        <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">SUBESTACIONES </h5>
        <p class="font-normal ">Lista de Subestaciones CFE Transmision</p>
      </div>

    </div>

  </main>
</template>

<script >
import { useRouter } from "vue-router";

export default {
  data() {
    return {
      router : useRouter()
    }
  },
  methods: {
    changeRoute(){
      console.log('click en funcion');
      this.router.push('subestaciones')
    }
  }
}


</script>


