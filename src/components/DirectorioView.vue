<template>
    <div class="container py-4">

        <h1 class="mb-2 text-2xl text-center font-extrabold leading-none tracking-tight text-gray-900 md:text-2xl lg:text-2xl ">
            DIRECTORIO TELEFONICO</h1>

            <div>
                <label for="opcSelector">
                    <ul class="collection">
                        <li></li>
                    </ul>
                </label>
            </div>

        <div class="hidden md:block">

            <div class="grid mb-2 border border-gray-200 rounded-lg shadow-sm md:grid-cols-4">
                <figure
                    class="flex flex-col items-center justify-center p-2 text-center bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r  ">
                    <blockquote class="max-w-2xl mx-auto text-gray-500 lg:mb-2 ">
                        <p class="">CENACE</p>
                    </blockquote>
                    <figcaption class="flex items-center justify-center space-x-3">
                        <div class="space-y-0.5 font-medium  text-left">
                            <div class="text-2xl text-gray-500 "> 055 + </div>
                        </div>
                    </figcaption>
                </figure>

                <figure
                    class="flex flex-col items-center justify-center p-2 text-center bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r  ">
                    <blockquote class="max-w-2xl mx-auto text-gray-500 lg:mb-2 ">
                        <p class="">DISTRIBUCION</p>
                    </blockquote>
                    <figcaption class="flex items-center justify-center space-x-3">
                        <div class="space-y-0.5 font-medium  text-left">
                            <div class="text-2xl text-gray-500 "> 064 + </div>
                        </div>
                    </figcaption>
                </figure>

                <figure
                    class="flex flex-col items-center justify-center p-2 text-center bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r ">
                    <blockquote class="max-w-2xl mx-auto text-gray-500 lg:mb-2 ">
                        <p class="">SUMINISTRO</p>
                    </blockquote>
                    <figcaption class="flex items-center justify-center space-x-3">
                        <div class="space-y-0.5 font-medium  text-left">
                            <div class="text-2xl text-gray-500 "> 064 + </div>
                        </div>
                    </figcaption>
                </figure>

                <figure
                    class="flex flex-col items-center justify-center p-2 text-center bg-white border-b border-gray-200 rounded-t-lg md:rounded-t-none md:rounded-tl-lg md:border-r ">
                    <blockquote class="max-w-2xl mx-auto text-gray-500 lg:mb-2 ">

                        <p class="">CONSTRUCCION</p>
                    </blockquote>
                    <figcaption class="flex items-center justify-center space-x-3">
                        <div class="space-y-0.5 font-medium text-left">
                            <div class="text-2xl text-gray-500 "> 030 + </div>
                        </div>
                    </figcaption>
                </figure>


            </div>

        </div>

        <!-- VISTA DE LAS EXTENSIONES EN MOBIL  -->
        <div class=" md:hidden">

            <div class="flex flex-col">
                <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                    <div class="inline-block min-w-full py-1 sm:px-6 lg:px-8">
                        <div class="overflow-hidden">
                            <table class="min-w-full text-left text-sm font-light">
                                <tbody>
                                    <tr class="border-b ">
                                        <td class="whitespace-nowrap px-6 py-1 font-medium">DISTRIBUCION</td>
                                        <td class="whitespace-nowrap px-6 py-1">064 +</td>
                                    </tr>
                                    <tr class="border-b ">
                                        <td class="whitespace-nowrap px-6 py-1 font-medium">SUMINISTRO</td>
                                        <td class="whitespace-nowrap px-6 py-1">064 +</td>
                                    </tr>
                                    <tr class="border-b ">
                                        <td class="whitespace-nowrap px-6 py-1 font-medium">CENACE</td>
                                        <td class="whitespace-nowrap px-6 py-1">055 +</td>
                                    </tr>
                                    <tr class="border-b ">
                                        <td class="whitespace-nowrap px-6 py-1 font-medium">CONSTRUCCION</td>
                                        <td class="whitespace-nowrap px-6 py-1">030 +</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>


        </div>

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
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
                        placeholder="Buscar Por nombre, puesto o extension ">
                </div>
            </div>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-100  ">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            EXT
                        </th>
                        <th scope="col" class="px-6 py-3">
                            PUESTO
                        </th>
                        <th scope="col" class="px-6 py-3 hidden md:block">
                            DEPTO
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="subs in filteredData" class="bg-white border-b d hover:bg-gray-50 ">



                        <th scope="row" class="px-2 py-2 font-medium text-gray-900 whitespace-nowrap ">
                            <p class="text-lg font-bold"> {{ subs.extension }} </p>
                        </th>
                        <td class="px-1 py-1">

                            <p class="md:hidden"> {{ subs.departamento }} </p>

                            <p class="font-semibold "> {{ subs.puesto }} </p>
                            <p class="text-xs"> {{ subs.nombre }} {{ subs.apellido }} </p>
                        </td>
                        <td class="hidden md:block">
                            <p> {{ subs.departamento }} </p>
                            <p class="text-xs"> {{ subs.zona }} </p>


                        </td>
                    </tr>

                </tbody>
            </table>


        </div>


    </div>
</template> 

<script >
import { useTaskStore } from '../stores/taskStore';
 
export default {

    data() {
        return {
            searchText: '',
            subs: [],
            taskstore: useTaskStore()
        }
    },
    methods: {
        async getDirectorio() {

            try {
                //obtenemos detalles equipo
                const res = await fetch(this.taskstore.ipAddress + '/directorio')
                const detalles = await res.json()
                this.subs = detalles

            } catch (error) {
                console.log('se produjo un error en la consulta')
                console.log(error);
            }
        }

    },
    async mounted() {
        console.log('mounted')
        await this.getDirectorio();
    },
    computed: {
        filteredData() {
            return this.subs
                .filter(
                    (entry) => this.subs.length
                        ? Object.keys(this.subs[0])
                            .some(key => ('' + entry[key]).toUpperCase().includes(this.searchText.toUpperCase()))
                        : true
                );
        }
    }
}

</script>

