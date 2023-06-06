<template>
    <div class="container py-4 ">

        <div class="grid  grid-cols-12 py-4 container " style="background-color:#949494; border-radius:10px 10px 0px 0px">
            <div class="col-span-10 ">
                <h1 CLASS="text-3xl text-cursive font-medium ">CARGADORES DE BATERIAS </h1>
            </div>
            <div class="text-right col-span-2 ">
                <h5 class="mb-2 text-3xl font-bold tracking-tight text-gray-900 ">
                    {{ taskStore2.currentRackName}}
                </h5>
            </div>
        </div>

        <div class=" rounded grid grid-cols-12 py-4 h-full w-full " >
            
            <div class="col-span-12  ">

                <div v-for="equipo in taskStore2.equiposGabinete" >

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
            
            <br> <br>
        </div>



    </div>
</template>
  
<script>
import { useRouter } from 'vue-router';
import { useTaskStore } from '../stores/taskStore';
import RenderImage from '../components/RenderImage.vue'


export default {
    components: { RenderImage },
    props: ['rackId'],
    setup() {
        //cargamos los datos de la base de datos 
        const taskStore = useTaskStore();
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
