<template>
  <div class="container py-4">

    <div class="grid grid-cols-12 py-2 bg-white container">
      <div class="col-span-3 ">
        <img src="../assets/img/se.jpg" class="" />
      </div>
      <div class="col-span-9 m-4">
        <h5 class=" md:text-3xl font-bold  text-gray-900 ">
          SUBESTACION {{ instala.currentSubestacion.nombre }}
        </h5>
        <p>Seleccione que desea visualizar</p>
      </div>
    </div>

    <br><br>

    <div class="grid gap-4 md:grid-cols-2">
      <template v-for="insta in instala.instalaciones">
        <template v-if="(instala.currentInstalaciones).includes(insta.id)">
          <div @click="verInstalacion(insta.id, idSe)"
            class="block max-w-sm p-6 cursor-pointer bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100 ">
            <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">{{ insta.nombre }}</h5>
            <p class="font-normal text-gray-700 dark:text-gray-400">{{ insta.alias }}</p>
          </div>
        </template>
      </template>
    </div>

  </div>
</template>

<script>
import { useRouter } from 'vue-router';
import { useTaskStore } from '../stores/taskStore';


export default {
  props: ['idSe'],
  data() {
    return {
      router: useRouter(),
      instala: useTaskStore()
    }
  },
  methods: {
    changeRoute(idSube) {
      console.log('click en funcion: ' + idSube);
      this.router.push('subestacion/' + idSube)
    },
    verInstalacion(idInstalacion, idSubestacion) {

      if (idInstalacion == 1) {
        this.router.push('/plano/' + idSubestacion); //unifilar 
      } else if (idInstalacion == 15) {
        this.router.push('/unifilar/' + idSubestacion); //unifilar
      }

    }
  }
}


</script>

