<template>
    <div class="container py-4 ">

        <div class="grid  grid-cols-12 py-4 container " style="background-color:#949494; border-radius:10px 10px 0px 0px">

            <div class="col-span-10 ">
                <h1 class="md:text-3xl text-2xl text-cursive font-medium ">SUBESTACION {{ taskStore2.currentSubestacion.alias  }}  </h1>
            </div> 
            <div class="text-right col-span-2 ">
                <h5 class="mb-2 text-3xl font-bold tracking-tight text-gray-900 ">
                    {{ taskStore2.currentRackName }}
                </h5>
            </div>
            
            <div class="col-span-12 " v-if="taskStore2.gabineteFiles && taskStore2.gabineteFiles.length > 0 ">

                <a v-for="(file, index) in taskStore2.gabineteFiles" :id="index" type="button" target=”_blank”
                    :href="taskStore2.ipLocalServ + '/src/assets/PDF/' + file.id + '.pdf'"
                    class="px-1 py-2 m-1 text-xs font-medium text-center inline-flex items-center text-gray bg-white  rounded-lg hover:bg-white-500  focus:ring-4 focus:outline-none ">

                    <img src="../assets/img/icons/3997608.png" class="w-5 h-5"  alt="">

                {{ file.nombre_archivo }}

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

import { useRouter, useRoute } from 'vue-router';
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
        taskStore.getInfoGabinete();
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
