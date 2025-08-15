<template>
    <div class="md:container py-8">

        <div class="grid grid-cols-12 py-2 bg-white container border-2 border-r-gray-200">
            <div class="col-span-12 ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">CASETA REI "{{ obtenerAtributoPorId(idSubestacion) }}"
                </h5>
            </div>

            <div class="col-span-12 ">
                <p class="font-normal text-gray-700 dark:text-gray-400"> Seleccione el gabinete donde desea visualizar los
                    equipos y obtener informacion </p>
                <br>

            </div>

        </div>

        <br />

        <div class="">
            <table class="w-full text-sm text-left text-gray-500 ">

                <tbody>
                    <!-- pared  arriba-->
                    <tr>
                        <td class="px-2"></td>
                        <td scope="row" colspan="8" class="py-2  bg-gray-400 "></td>
                        <td class="px-2"></td>
                    </tr>

                    <!-- nivel 1-->
                    <tr class="m-8">
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-6" colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>
                    <!-- nivel 1-->
                    <tr class="m-8">
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-6" colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>
                    <!-- nivel 2-->
                    <tr class="m-8">
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 " colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 3-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 y-2"></td>
                        <td class="px-3 py-2"></td>
                        <td class="px-3 py-2"></td>

                        <td class=" p-4 border-solid border-4 border-gray-500 font-bold text-center "> <p>A2</p> <p>CONTROL</p>  </td>
                        <td class=" p-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(idSubestacion, 'REI')"> <p>A1</p> <p>COMUNICACIONES</p>  </td>

                        <td class="px-2"></td>
                     
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 4-->
                    <tr class="m-8">
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-2" colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>
                    <!-- nivel 5-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-6" colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>
                    <!-- nivel 5-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-6" colspan="6"> </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- pared  arriba-->
                    <tr>
                        <td class="px-2"></td>
                        <td scope="row" colspan="8" class="py-2  bg-gray-400 "></td>
                        <td class="px-2"></td>
                    </tr>

                </tbody>
            </table>
        </div>


    </div>

    <br />
    <br />
</template>

<script>
import { useRouter } from 'vue-router';
import { useTaskStore } from '../../stores/taskStore';
import _ from 'lodash'

export default {
    props: ['idSubestacion'],
    data() {
        return {
            router: useRouter(),
            taskS: useTaskStore(),
            casetasRei:[   
                { abrev: 'YXE', idGabinete: 364, nombre: 'YAXCHE' }, //YAXCHE
                { abrev: 'PMU', idGabinete: 367, nombre: 'PLAYA MUJERES' }, //PLAYA MUJERES
                { abrev: 'PJU', idGabinete: 366, nombre: 'PUERTO JUAREZ' }, //PUERTO JUAREZ
                { abrev: 'CNC', idGabinete: 369, nombre: 'CANCUN' }, //CANCUN\
                { abrev: 'BNP', idGabinete: 368, nombre: 'BONAMPAK' }, //BONAMPAK
                { abrev: 'NIH', idGabinete: 372, nombre: 'NICTEHA' }, //NICTEHA
                { abrev: 'KAB', idGabinete: 371, nombre: 'KAB' }, //KABAH
                { abrev: 'NCT', idGabinete: 370, nombre: 'NICHUPTE' }, //NICHUPTE
                { abrev: 'AKD', idGabinete: 378, nombre: 'AKUMAL II' }, //AKUMAL DOS
                { abrev: 'AUC', idGabinete: 377, nombre: 'AKTUNCHEN' }, //AKTUNCHEN
                { abrev: 'ZNE', idGabinete: 375, nombre: 'ZACNICTE  ' }, //ZACNICTE
                { abrev: 'PMO', idGabinete: 373, nombre: 'PUERTO MORELOS  ' }, //PUERTO MORELOS
                { abrev: 'IXC', idGabinete: 365, nombre: 'IXCALACOCO  ' }, //IXCALACOCO
                { abrev: 'MYK', idGabinete: 374, nombre: 'MAYAKOBA  ' }, //MAYAKOBA
                { abrev: 'PLY', idGabinete: 376, nombre: 'PLAYACAR  ' }, //PLAYACAR
                { abrev: 'KUK', idGabinete: 379, nombre: 'KUKULKAN  ' }, //KUKULCAN
                { abrev: 'CEK', idGabinete: 380, nombre: 'CANEK  ' }, //CANEK]

            ]
        }
    },
    methods: {
        obtenerAtributoPorId( id) {
        
            const objeto = _.find(this.casetasRei, { idGabinete: parseInt(id) });
            return objeto.abrev ? objeto.abrev : undefined;
        },
        verGabinete(id, name, vista) {

            this.taskS.currentRack = id
                this.taskS.currentRackName = name
                this.router.push('/rack/' + id )
        }
    }
}

</script>

