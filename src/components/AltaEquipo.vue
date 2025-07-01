<template>

    <div class="container">

        <select v-model="selected">
            <option disabled value="">Please select one</option>
            <option>A</option>
            <option>B</option>
            <option>C</option>
        </select>

        <form class="max-w-sm mx-auto">
            <label for="subestaciones" class="block mb-2 text-sm font-medium text-gray-900 ">SUBESTACION</label>
            <select id="subestaciones" v-model="subestacion"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 ">
                <option v-for="sub in subestaciones" :value="sub.id"> # {{ sub.id }} _ {{ sub.nombre }} </option>
            </select>

            <label for="modelo" class="block mb-2 text-sm font-medium text-gray-900 ">MODELO EQUIPO</label>
            <select id="subestaciones" v-model="modelo"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 ">
                <option v-for="mod in modelos" :value="mod.id"> # {{ mod.id }} _ {{ mod.modelo }} </option>
            </select>

            <label for="gabinetes" class="block mb-2 text-sm font-medium text-gray-900 ">GABINETE</label>
            <select id="subestaciones" v-model="gabinete"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 ">
                <option v-for="gab in filteredData" :value="gab.id"> {{ gab.etiqueta }} </option>
            </select>

            <label for="nombreequipo" class="block mb-2 text-sm font-medium text-gray-900 ">NOMBRE DEL EQUIPO</label>
            <input
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                id="nombreequipo" v-model="nombreequipo" placeholder="Nombre Equipo" />


            <br>
            <button @click="darAltaEquipo" type="button"
                class="px-2 py-2 text-xs font-medium text-center text-white bg-green-700 rounded-lg hover:bg-green-800 focus:ring-4 focus:outline-none focus:ring-green-300 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                AGREGAR EQUIPO </button>

        </form>


    </div>
</template>

<script>
import { useTaskStore } from '../stores/taskStore';
import _ from 'lodash';



export default {

    data() {
        return {
            searchText: '',
            equipos: [],
            taskstore: useTaskStore(),
            subestaciones: [],
            modelos: [],
            gabinetes: [],
            subestacion: '',
            modelo: '',
            gabinete: '',
            nombreequipo: ''
        }
    },
    methods: {
        // listaGabinetes
        // listaModeloEquipo
        // listaSubestaciones

        async darAltaEquipo() {

            if (this.subestacion != '' && this.modelo != '' && this.gabinete != '' && this.nombreequipo != '') {
                console.log('damos de alta el equipo con los siguientes datos ');
                console.log(this.subestacion)
                console.log(this.modelo)
                console.log(this.gabinete)
                console.log(this.nombreequipo)

             
                

                const res = await fetch(this.taskstore.ipAddress + '/altaEquipo', {
                    method: 'POST',
                    headers: {
                    'Accept': 'application/json',
                    'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({
                        subestacion :'azdsd',
                        modelo :1,
                        gabinete :1,
                        nombreequipo : '11'
                    })
                });
                
                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);

                
            } else {
                alert('Complete todos los datos apara ingresar un equipo')
            }



        },



        async getlistaSubestaciones() {
            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress + '/listaSubestaciones')


                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
                this.subestaciones = detalles


            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        },
        async getlistaModeloEquipo() {
            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress + '/listaModeloEquipo')


                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
                this.modelos = detalles


            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        },
        async getlistaGabinetes() {
            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress + '/listaGabinetes')


                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
                this.gabinetes = detalles


            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        }

    },
    async mounted() {
        console.log('mounted')
        await this.getlistaSubestaciones();
        await this.getlistaModeloEquipo();
        await this.getlistaGabinetes();
    },
    computed: {
        filteredData() {
            const subes = this.subestacion
            return _.filter(this.gabinetes, function (o) {
                return o.subestacion == subes;
            });
        }
    }
}





</script>
