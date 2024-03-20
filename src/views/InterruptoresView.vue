<template>
    <div class="container py-4 ">

        <div class="grid  grid-cols-12 py-4 container bg-gabineteColor " style=" border-radius:10px 10px 0px 0px">

            <div class="col-span-10 ">
                <h1 CLASS="md:text-3xl text-2xl text-cursive font-medium ">SUBESTACION TINTAL </h1>
            </div>
            <div class="text-right col-span-2 ">
                <h5 class="mb-2 text-3xl font-bold tracking-tight text-gray-900 ">
                    {{ taskStore2.currentRackName }}
                </h5>
            </div>

        </div>
        <hr>

        <div class="bg-gabineteColor">
            <img src="../assets/img/Equipos/Amperimetro.png">
        </div>

        <hr>

        <div class="pt-2 grid gap-1 grid-cols-8 md:grid-cols-11 bg-gabineteColor min-h-screen" >

            <template v-for="(inte, key) in Interruptores">


                <template v-if="key ==0 || esPar(key)">

                    <div class="md:col-span-3 col-span-2 break-words md:ml-2">
                        <div class=" border-2 rounded border-gray-500/100 col-span-3 text-center  ">
                            <p class=" font-bold text-sm text-gray-900 ">INT # {{ inte.id }} </p>
                            <p class=" md:text-sm text-xs "> {{ inte.etiqueta }} </p>

                        </div>
                    </div>
                    <div class=" md:col-span-2 col-span-2 ">
                        <img class="text-left" src="../assets/img/Equipos/Interruptor.png">
                    </div>
                    <div class="hidden md:block  md:col-span-0  ">

                    </div>

                </template>
                <template v-else>

                    <div class="col-span-2 ">
                        <img class="text-left" src="../assets/img/Equipos/Interruptor.png">
                    </div>
                    <div class="md:col-span-3 col-span-2 break-words md:me-2">
                        <div class=" border-2 rounded border-gray-500/100 col-span-3 text-center  ">
                            <p class=" font-bold text-sm text-gray-900 ">INT # {{ inte.id }} </p>
                            <p class=" md:text-sm text-xs "> {{ inte.etiqueta }} </p>

                        </div>
                    </div>
                </template>








            </template>

        </div>

        <div class="h-20 bg-gabineteColor   " >

        </div>

    </div>
</template>
  
<script>
import { useTaskStore } from '../stores/taskStore';
    
export default {
    props: ['rackId'],
    setup() {
        //cargamos los datos de la base de datos 
        const taskStore = useTaskStore();
        taskStore.getEquipos();
        taskStore.getFilesGabinete();
    },
    data() {
        return {
            Interruptores: [],
            numeroCount: 1,
            taskStore2: useTaskStore(),
        }
    },
    methods: {
        esPar: function (numero) {
            return numero % 2 === 0;
        },
        async getInterruptores() {
            try {
                console.log('hola: ' + this.rackId);
                //obtenemos detalles equipo
                const res = await fetch(this.taskStore2.ipAddress + this.rackId)

                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
                this.Interruptores = detalles
                this.readyToRead = true

            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        }

    },
    async mounted() {
        console.log('mounted')
        await this.getInterruptores();
    }
}

</script>


<style>
#fondo3 {
    min-height: 1000px;
    background-image: url('@/assets/img/finalGood2.png');
    background-repeat: no-repeat;
    background-size: 100% 100%;
    padding-top: 40px;
}
</style>
