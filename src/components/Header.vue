<template>
    <header class=" top-0 shadow-lg bg-stone-50 ">
      <nav
        class="container flex items-center gap-4  py-6"
      >
        <RouterLink :to="{ name: 'home' }">
          <div class="flex items-center gap-3">
            <img src="../assets/img/logoCfe.ico" alt="" class="w-30 h-10">
            <p class="text-2xl text-cc-official italic font-bold invisible md:visible">Transmision</p>
          </div>
        </RouterLink>
  
        <div class="flex gap-3 flex-1 justify-end">
          <div @click="changeRoute" class="cursor-pointer" >
            <a className="rounded-lg px-3 py-2 text-slate-700 font-medium hover:bg-slate-300 hover:text-cc-official">Regresar</a>
          </div>
          
          <RouterLink :to="{ name: 'home' }">
          <div class="cursor-pointer">
            <a className="rounded-lg px-3 py-2 text-slate-700 font-medium hover:bg-slate-300 hover:text-cc-official">Inicio</a>  
          </div>
        </RouterLink>
                    
        </div>

      </nav>
    </header>
  </template>
  
  <script >
  import { useRouter } from "vue-router";

  
  //asi se cambia la variable de mostrar
  export default {
  data() {
    return {
      router : useRouter()
    }
  },
  methods: {
    changeRoute(){
      console.log('click en funcion');
      this.router.go(-1)
    }
  }
}
  </script>