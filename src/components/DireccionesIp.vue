<template>
    <div class=" p-12">

        <div class="container mb-4">
            <label for="table-search" class="sr-only">Search</label>
            <div class="relative">
                <div class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none">
                    <svg class="w-5 h-5 text-gray-500 dark:text-gray-400" aria-hidden="true" fill="currentColor"
                        viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                            d="M8 4a4 4 0 100 8 4 4 0 000-8zM2 8a6 6 0 1110.89 3.476l4.817 4.817a1 1 0 01-1.414 1.414l-4.816-4.816A6 6 0 012 8z"
                            clip-rule="evenodd"></path>
                    </svg>
                </div>
                <input type="text" v-model="searchText" id="table-search"
                    class=" block p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg w-full bg-gray-50 focus:ring-blue-500 focus:border-blue-500  "
                    placeholder="Buscar por R3, serie, ubicacion, fabricante, etc... ">
            </div>
        </div>

        <table class="w-full text-sm border text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-left text-gray-700 uppercase bg-gray-100  ">
                <tr class="bg-gray-200 ">
                    <th colspan="7" class="text-center text-2xl" > BALAM </th>
                </tr>
                <tr>
                    
                    <th scope="col" class="px-6 py-3 border-r">
                        ID EQUIPO
                    </th>
                    <th scope="col" class="px-6 py-3 border-r">
                        DENOMINACION
                    </th>
                    <th scope="col" class="px-6 py-3 border-r">
                        ID EQUIPO
                    </th>
                    <th scope="col" class="px-6 py-3 border-r">
                        NOMBRE
                    </th>
                    <th scope="col" class="px-6 py-3 border-r">
                        DIRECCION IP
                    </th>
                    <th scope="col" class="px-6 py-3">
                        OBSERVACION
                    </th>
                    <th></th>
                </tr>
            </thead>
            <tbody class="left-center">
                <tr v-for="subs in filteredData" class="bg-white border-b d hover:bg-gray-50 ">

                    <td class="px-1 py-1 border-r pl-2">
                        <p class=""> {{ subs.id }} </p>
                    </td>
                    <td></td>
                    <td class="border-r pl-2">
                        <p> {{ subs.id_equipo }} </p>
                    </td>
                    <td class="border-r pl-2">
                        <p> {{ subs.identificacion }} </p>
                    </td>
                    <td class="border-r pl-2">
                        <p> {{ subs.direccion }} </p>
                    </td>
                    <td class="border-r pl-2">
                        <p> {{ subs.comentario }} </p>
                    </td>
                    <td>
                        <button type="button" class="px-3 py-2 text-xs font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Extra small</button>
                    </td>

                </tr>

            </tbody>
        </table>

        

    </div>
</template> 

<script >
import { useTaskStore } from '../stores/taskStore';




export default {

    data() {
        return {
            searchText: '',
            equipos: [],
            taskstore: useTaskStore()
        }
    },
    methods: {
        async getEquiposIP() {
            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress + '/direccionesip')


                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
                this.equipos = detalles


            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        }

    },
    async mounted() {
        console.log('mounted')
        await this.getEquiposIP();
    },
    computed: {
        filteredData() {
            return this.equipos
                .filter(
                    (entry) => this.equipos.length
                        ? Object.keys(this.equipos[0])
                            .some(key => ('' + entry[key]).toUpperCase().includes(this.searchText.toUpperCase()))
                        : true
                );
        }
    }
}





</script>

