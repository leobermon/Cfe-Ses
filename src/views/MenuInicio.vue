<template>
  <main class="container ">

    <div v-if="taskstore.loading">
      <div
        class="flex items-center justify-center w-100 h-100 border border-gray-200 rounded-lg bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
        <div role="status">
          <svg aria-hidden="true" class="w-8 h-8 mr-2 text-gray-200 animate-spin dark:text-gray-600 fill-blue-600"
            viewBox="0 0 100 101" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z"
              fill="currentColor" />
            <path
              d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z"
              fill="currentFill" />
          </svg>
          <span class="sr-only">Loading...</span>
        </div>
      </div>
    </div>
    <div v-else>



      <div class="grid gap-2 md:grid-cols-2 py-2 self-center place-content-center ">

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('subestaciones')">

          <div class="col-span-2 ">
            <img src="../assets/img/se.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h6 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">SUBESTACIONES</h6>
            <p class="text-sm ">Vista de racks en la caseta de control </p>
          </div>


        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('directorio')">

          <div class="col-span-2 ">
            <img src="../assets/img/directorio.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h6 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">DIRECTORIO TELEFONICO</h6>
            <p class="text-sm ">Directorio con las extensiones de telefono</p>
          </div>


        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('enlacesOtn')">

          <div class="col-span-2 ">
            <img src="../assets/img/otn.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h6 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ENLACES OTN </h6>
            <p class="text-sm ">Mapa con los enlaces de quipos OTN</p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('enlacesEci')">

          <div class="col-span-2 ">
            <img src="../assets/img/eci.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ENLACES ECI </h5>
            <p class="text-sm ">Mapa con los enlaces de quipos ECI</p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('enlacesOplat')">

          <div class="col-span-2 ">
            <img src="../assets/img/oplat.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ENLACES OPLAT </h5>
            <p class="text-sm">Mapa con los enlaces de quipos OPLAT</p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('equiposr3')">

          <div class="col-span-2 ">
            <img src="../assets/img/equipos.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">EQUIPOS R3 </h5>
            <p class="text-sm">Lista de equipos comunicaciones</p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeLink()">

          <div class="col-span-2 ">
            <img src="../assets/img/rdo.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">DIAGRAMA RDO ZTCNC</h5>
            <p class="text-sm">Lista de equipos comunicaciones</p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeLink2()">

          <div class="col-span-2 ">
            <img src="../assets/img/enlacesfo.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ENLACES F.O GRTP</h5>
            <p class="text-sm">Diagrama de enlaces y las rutas de fibra optica  </p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('ultimamilla')">

          <div class="col-span-2 ">
            <img src="../assets/img/ultimamilla.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ULTIMA MILLA</h5>
            <p class="text-sm">Mapas que muestrar la ruta de las ultimas millas </p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeLink3()">
          <div class="col-span-2 ">
            <img src="../assets/img/utr.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">ENLACES DE UTRs</h5>
            <p class="text-sm">Diagrama con los enlaces de UTR </p>
          </div>
        </div>

        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('direccionesip')">
          <div class="col-span-2 ">
            <img src="../assets/img/ip.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">IP EQUIPOS</h5>
            <p class="text-sm"> Lista de direcciones IP de equipos </p>
          </div>
        </div>
      
        <div
          class="grid-cols-5 grid gap-x-2  max-w-sm px-2 py-2 bg-white border border-gray-300 rounded-lg shadow hover:bg-gray-100  dark:hover:bg-gray-300 cursor-pointer "
          @click="changeRoute('casetasrei')">
          <div class="col-span-2 ">
            <img src="../assets/img/casetarei.svg" class="h-20 w-30" />
          </div>
          <div class="col-span-3 ">
            <h5 class="mb-1 text-1xl font-bold tracking-tight text-gray-900 ">CASETAS REI</h5>
            <p class="text-sm"> Mapa con las casetas REI </p>
          </div>
        </div>




      </div>
    </div>
  </main>
</template>

<script>

import { useRouter } from "vue-router";
import { useTaskStore } from '../stores/taskStore';

export default {
  data() {
    return {
      router: useRouter(),
      taskstore: useTaskStore()
    }
  },
  methods: {
    changeRoute(rout) {
      this.router.push(rout)
    },
    changeLink() {
      window.open('http://localhost:5173/src/assets/diagramas/rdo.svg', '_blank')
    },
    changeLink2() {
      //this.router.replace({ path: link })
      //this.router.go(link); //unifilar 
      window.open('http://localhost:5173/src/assets/diagramas/visio.svg', '_blank')
    },
    changeLink3() {
      //this.router.replace({ path: link })
      //this.router.go(link); //unifilar 
      window.open('http://localhost:5173/src/assets/diagramas/utr.svg', '_blank')
    }
  }
}

</script>
