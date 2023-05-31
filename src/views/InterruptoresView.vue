<template>
    <div class="container py-4 ">


        <div class="grid  grid-cols-12 py-4 container bg-gabineteColor " style=" border-radius:10px 10px 0px 0px">


            <div class="col-span-10 ">
                <h1 CLASS="text-3xl text-cursive font-medium ">SUBESTACION TINTAL </h1>
            </div>
            <div class="text-right col-span-2 ">
                <h5 class="mb-2 text-3xl font-bold tracking-tight text-gray-900 ">
                    {{ name }}
                </h5>
            </div>



        </div>

        <div class="bg-gabineteColor">
            <img src="../assets/img/Equipos/Amperimetro.png">
        </div>






        <hr>

        <div class="bg-gabineteColor rounded  py-4 h-full w-full">


            <div v-for="n in 10" class="grid grid-cols-11 ">


                <div class=" border-2 rounded border-gray-500/100 m-2 col-span-3 text-center  ">
                    <p>1</p>
                    <p class=" ">Teleproteccion OPLAT 77000 </p>

                </div>

                <div class="col-span-2">
                    <img class="text-left" src="../assets/img/Equipos/Interruptor.png">

                </div>



                <div class="col-span-1 "></div>


                <div class="col-span-2 ">
                    <img src="../assets/img/Equipos/Interruptor.png">

                </div>
                <div class=" border-2 rounded border-gray-500/100 m-2 col-span-3 text-center  ">
                    <p>1</p>
                    <p class=" ">Teleproteccion OPLAT 77000 </p>

                </div>


                <br />

                <!-- termianmos de usar el divisor  -->

            </div>
            <!-- terminamos d eponer los ewquipo -->

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
    props: ['rackId', "name"],
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
  
<style></style>
