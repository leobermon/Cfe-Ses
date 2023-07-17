<template>
    <div class="container py-4 ">

        <div class="grid  grid-cols-12 py-4 container " style="background-color:#949494; border-radius:10px 10px 0px 0px">

            <div class="col-span-10 ">
                <h1 CLASS="text-3xl text-cursive font-medium ">SUBESTACION TINTAL </h1>

            </div>
            <div class="text-right col-span-2 ">
                <h5 class="mb-2 text-3xl font-bold tracking-tight text-gray-900 ">
                    {{ taskStore2.currentRackName }}
                </h5>
            </div>

            <div class="col-span-12 " v-if="taskStore2.gabineteFiles && taskStore2.gabineteFiles.archivo > 0">
                <a type="button" target=”_blank” :href="taskStore2.ipLocalServ+'/src/assets/PDF/'+taskStore2.gabineteFiles.archivo+'.pdf'" 
                    class="text-white bg-blue-700 hover:bg-blue-800 focus:outline-none focus:ring-4 focus:ring-blue-300 font-medium rounded-full text-sm px-5 py-2.5 text-center mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                                        
                    Diagrama de Proteccion, Medicion y Control 
                    
                </a>

            </div>

        </div>

        <div class="bg-gray-200 rounded grid grid-cols-12 py-4 h-full w-full" id="fondo">
            <div class="col-span-1 "></div>
            <div class="col-span-10  ">

                <div v-for="equipo in taskStore2.equiposGabinete" class="grid grid-cols-12 ">

                    <div class="col-span-12 ">
                        <ul class="text-center">

                            <li class="py-1 cursor-pointer">

                                <a @click="VerEquipo(equipo.id)" class=" ">

                                    <h1 class="border-2 rounded border-gray-500/100  font-semibold"
                                        style="background-color:#949494;"> {{ equipo.nombre }} </h1>

                                    <RenderImage :hasImg="equipo.imgActive ? true : false" :imdId="equipo.modeloEquipo"
                                        :typeImg="'ModeloEquipo'" />

                                </a>

                            </li>

                        </ul>

                    </div>

                    <br />

                    <!-- termianmos de usar el divisor  -->

                </div>
                <!-- terminamos d eponer los ewquipo -->
            </div>
            <div class="col-span-1 "></div>
            <br> <br>
        </div>



    </div>
</template>
  
<script>

import { useRouter, useRoute  } from 'vue-router';
import { useTaskStore } from '../stores/taskStore';
import RenderImage from '../components/RenderImage.vue'


export default {
    components: { RenderImage },
    props: ['rackId'],
    setup() {
        //cargamos los datos de la base de datos 

        const route = useRoute()
        const route2 = useRouter()
        const taskStore = useTaskStore();

        const interruptores = [123, 124, 125, 126, 130, 131, 132, 134, 136];
        const cargadores = [137, 138, 139, 142, 143, 144, 145];

        if (taskStore.currentRack == 0) {
            //comprobar si es interruptor o cargador

            if (cargadores.includes(parseInt(route.params.rackId))) {
                taskStore.currentRack = route.params.rackId
                route2.push('/cargadores/' + route.params.rackId)
            } else if (interruptores.includes(parseInt(route.params.rackId))) {
                taskStore.currentRack = route.params.rackId
                route2.push('/interruptores/' + route.params.rackId)
            } else {
                taskStore.currentRack = route.params.rackId
            }

        }

        taskStore.getEquipos();
        taskStore.getFilesGabinete();
    },
    data() {
        return {
            router: useRouter(),
            taskStore2: useTaskStore(),
            test: 'hola'
        }

    },
    methods: {
        detallesEquipo(idEquipo) {
            console.log('click en funcion: ' + idSe);
            this.router.push('subestacion/' + idEquipo)
        },
        VerEquipo(idEquipo) {
            this.router.push('/equipo/' + idEquipo)
        }
    },
}

</script>
  
<style>
#fondo {
    min-height: 1000px;
    background-image: url('@/assets/img/finalGood2.png');
    background-repeat: no-repeat;
    background-size: 100% 100%;
    padding-top: 40px;
}
</style>
