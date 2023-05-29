<template>
    <div class="container py-4">

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
                        placeholder="Search for items">
                </div>
            </div>
            <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
                <thead class="text-xs text-gray-700 uppercase bg-gray-100  ">
                    <tr>

                        <th scope="col" class="px-6 py-3">
                            NOMBRE SUBESTACION
                        </th>
                        <th scope="col" class="px-6 py-3">
                            ABREV
                        </th>
                        <th scope="col" class="px-6 py-3">
                            Accion
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="subs in filteredData" class="bg-white border-b d hover:bg-gray-50 ">

                        <th scope="row" class="px-4 py-4 font-medium text-gray-900 whitespace-nowrap ">
                            {{ subs.nombre }}
                        </th>
                        <td class="px-4 py-4">
                            {{ subs.alias }}
                        </td>
                        <td class="px-4 py-4">

                            <a @click="changeRoute(subs)"
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

import { filter } from 'lodash';
import { useRouter } from 'vue-router'
import axios from "axios";
import { useTaskStore } from '../stores/taskStore';

export default {
    
    data() {
        return {
            router: useRouter(),
            searchText: '',
            subs: useTaskStore()
        }
    },
    methods: {
        changeRoute(idSe) {
            
            idSe.instalaciones = JSON.parse("[" + idSe.instalaciones + "]")
            this.subs.currentSubestacion = idSe;
            this.subs.currentInstalaciones = JSON.parse("[" + idSe.instalaciones + "]")

            console.log('click en funcion: ' + idSe.id);
            this.router.push('subestacion/' + idSe.id)
        }

    },
    computed: {
        filteredData() {
            return this.subs.subestaciones
                .filter(
                    (entry) => this.subs.subestaciones.length
                        ? Object.keys(this.subs.subestaciones[0])
                            .some(key => ('' + entry[key]).toUpperCase().includes(this.searchText.toUpperCase()))
                        : true
                );
        }
    }
}





</script>

