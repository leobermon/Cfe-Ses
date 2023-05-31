<template>
    <div class="md:container py-8">

        <div class="grid grid-cols-12 py-2 bg-white container border-2 border-r-gray-200">
            <div class="col-span-12 ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">SUBESTACION TINTAL "SET3"
                </h5>
            </div>

            <div class="col-span-12 ">
                <p class="font-normal text-gray-700 dark:text-gray-400">Here are the biggest enterprise technology
                    acquisitions
                    of 2021 so far, in reverse chronological order.</p>
            </div>

        </div>

        <br />

        <div class="">
            <table class="w-full text-sm text-left text-gray-500 ">

                <tbody>
                    <!-- pared  arriba-->
                    <tr>
                        <td class="px-2"></td>
                        <td class="bg-gray-400"></td>
                        <td></td>

                        <td scope="row" colspan="14" class="py-2  bg-gray-400 "></td>
                        <td class="px-2"></td>
                    </tr>

                    <!-- nivel 1-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4"> </td>
                        <td class="px-3 py-4 "></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> D15 </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="rotate-45" rowspan="3" colspan="5"> Bodega 1 </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 2-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(136, 'C14', 'interruptores')"> C14 </td>
                        <td class="px-3 py-4 "></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(144, 'D14', 'cargadores')"> D14 </td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 3-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(122, 'B13')"> B13 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(143, 'D13', 'cargadores')"> D13 </td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 4-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(121, 'B12')"> B12 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(134, 'C12', 'interruptores')"> C12 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(142, 'D12', 'cargadores')"> D12 </td>
                        <td class="px-1 bg-gray-400 border-b-8 border-gray-400"></td>
                        <td class="px-1 border-b-8 border-gray-400"></td>
                        <td class="px-1 border-b-8 border-gray-400"></td>
                        <td class="px-1 border-b-8 border-gray-400"></td>
                        <td class="px-1 border-b-8 border-gray-400"></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 5-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(120, 'B11')"> B11 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 "></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-1 "></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-1"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 6-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(109, 'A10')"> A10 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(132, 'C10', 'interruptores')"> C10 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400 border-t-8 border-gray-400"></td>
                        <td class="px-2 py-4 border-t-8 border-gray-400"></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-2 py-4"></td>
                        <td class="px-2 py-4 border-t-8 border-gray-400"></td>
                        <td class="px-1 bg-gray-400 border-t-8 border-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 7-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(108, 'A9')"> A9 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(131, 'C9', 'interruptores')"> C9 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-2 py-4 rotate-45" colspan="2" rowspan="2">Bodega</td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-2 py-4 rotate-45" colspan="2" rowspan="2">Baño</td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 8-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(107, 'A8')"> A8 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(117, 'B8')"> B8 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(130, 'C8', 'interruptores')"> C8 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 9-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(116, 'B7')"> B7 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-2 py-4 border-b-8 border-gray-400"></td>
                        <td class="px-2 py-4 border-b-8 border-gray-400"></td>
                        <td class="px-1 bg-gray-400 border-b-8 border-gray-400"></td>
                        <td class="px-2 py-4 border-b-8 border-gray-400"></td>
                        <td class="px-2 py-4 border-b-8 border-gray-400"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 10-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(115, 'B6')"> B6 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class=" rotate-45" colspan="5" rowspan="4">CUARTO DE BATERIAS</td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 11-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(104, 'A5')"> A5 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(114, 'B5')"> B5 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 12-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(103, 'A4')"> A4 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(113, 'B4')"> B4 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(126, 'C4', 'interruptores')"> C4 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 13-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(102, 'A3')"> A3 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(112, 'B3')"> B3 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(125, 'C3', 'interruptores')"> C3 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(139, 'D3', 'cargadores')"> D3 </td>
                        <td class="px-1 bg-gray-400"></td>

                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 14-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(101, 'A2')"> A2 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(111, 'B2')"> B2 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(124, 'C2', 'interruptores')"> C2 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(138, 'D2', 'cargadores')"> D2 </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-3 py-4" colspan="5"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 15-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(100, 'A1')"> A1 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(123, 'C1', 'interruptores')"> C1 </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(137, 'D1', 'cargadores')"> D1 </td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-3 py-4" colspan="5"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- nivel 16-->
                    <tr>
                        <td></td>
                        <td class="px-1 bg-gray-400 "> </td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-3 py-4"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td class="px-3 py-4" colspan="5"></td>
                        <td class="px-1 bg-gray-400"></td>
                        <td></td>
                    </tr>

                    <!-- pared  arriba-->
                    <tr>
                        <td class="px-2"></td>
                        <td class="px-2 bg-gray-400"></td>
                        <td class="px-2"></td>
                        <td scope="row" colspan="12" class="py-2  bg-gray-400 "></td>
                        <td class="px-2"></td>
                        <td class="px-1 bg-gray-400"></td>
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

//cargamos los datos de la base de datos 


export default {

    data() {
        return {
            router: useRouter(),
            taskS: useTaskStore()

        }
    },
    methods: {
        verGabinete(id, name, vista) {

            console.log('entra en verGabinetes');

            if (vista == "cargadores") {
                this.taskS.currentRack = id
                this.router.push('/cargadores/' + id + '/' + name)
                console.log('opcion 1 ');
            } else if (vista == "interruptores") {
                this.taskS.currentRack = id
                this.router.push('/interruptores/' + id + '/' + name)
                console.log('opcion 2 ');
            } else {
                this.taskS.currentRack = id
                this.router.push('/rack/' + id + '/' + name)
                console.log('opcion 3 ');
            }


        }
    }
}




</script>


