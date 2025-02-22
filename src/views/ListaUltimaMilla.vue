<template>
    <div class="container py-4">

        <p class="uppercase ...">LISTA DE TRAMOS ULTIMA MILLA ,SELECCIONE PARA VISUALIZAR </p>

        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <div class="flex items-center justify-between pb-5">


            </div>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-100  ">
                    <tr>

                        <th scope="col" class="px-6 py-3">
                            NOMBRE SUBESTACION
                        </th>

                        <th scope="col" class="px-6 py-3">
                            Accion
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="subs in listaUltimaMilla" class="bg-white border-b d hover:bg-gray-50 ">

                        <th scope="row" class="px-4 py-4 font-medium text-gray-900 whitespace-nowrap ">
                            {{ subs.nombre }}
                        </th>

                        <td class="px-4 py-4">

                            <a @click="changeRoute(subs.nombreFile)"
                                class="text-white cursor-pointer bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
                                Ver
                            </a>

                        </td>
                    </tr>

                </tbody>
            </table>
        </div>


    </div>
</template> 

<script >

import { useRouter } from 'vue-router'

export default {
    data() {
        return {
            router: useRouter(),
            searchText: '',
            listaUltimaMilla: [
                { nombre: 'S.E TULUM ---> AGENCIA TULUM ', nombreFile: 'ultimaMillaTulumAgencia' },
                { nombre: 'S.E TULUM ---> S.E. PLAYA DEL CARMEN ', nombreFile: 'tulumPcn' },
                { nombre: 'Ultimas Milas Cancun ', nombreFile: 'cancun' }
            ]
        }
    },
    methods: {
        changeRoute(idSe) {

            this.router.push(idSe)

        }

    }
}

</script>
