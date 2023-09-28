<template>
    <div class="container py-4">

        <p class=" border-gray-300">
        <h1>Directorio Telefonico</h1>
        </p>


        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <div class="flex items-center justify-between pb-5">

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
                        class="block p-2 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg w-80 bg-gray-50 focus:ring-blue-500 focus:border-blue-500  "
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
                        <th scope="col" class="px-6 py-3">
                            DEPTO
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="subs in filteredData" class="bg-white border-b d hover:bg-gray-50 ">



                        <th scope="row" class="px-2 py-2 font-medium text-gray-900 whitespace-nowrap ">
                            <p class="text-lg font-bold"> {{ subs.extension }} </p>
                        </th>
                        <td class="px-4 py-4">
                            <p class="font-semibold "> {{ subs.puesto }} </p>
                            <p class="text-xs"> {{ subs.nombre }} {{ subs.apellido }} </p>
                        </td>
                        <td>
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

export default {

    data() {
        return {
            searchText: '',
            subs: []
        }
    },
    methods: {
        async getDirectorio() {
            try {
                //obtenemos detalles equipo
                const res = await fetch('http://192.168.1.78:5000/directorio')

                const detalles = await res.json()
                console.log('resultado');
                console.log(detalles);
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

