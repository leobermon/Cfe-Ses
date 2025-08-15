<template>
    <div>
        <!-- Lista de detalles, web -->
        <div class=" md:block py-1">



            <div class="flex flex-col">
                <div class="overflow-x-auto sm:-mx-6 lg:-mx-8">
                    <div class="inline-block min-w-full py-1 sm:px-6 lg:px-8">
                     
                            <table class="min-w-full border  text-sm font-light dark:border-neutral-500 justify-start">
                               
                                

                                <tbody>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> ID EQUIPO </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.id }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> SUBESTACION </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.se }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> GABINETE </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.gabineteName }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> MARCA </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.marcaNombre }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> TIPO DE EQUIPO </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.nombreTipoEquipo }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> MODELO </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.nombreModelo }}</td>
                                    </tr>
                                     
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> NOMBRE </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.nombre }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> R3 </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.numeroR3 }}</td>
                                    </tr>
                                    <tr class="border-b">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> N. SERIE </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equipo.serialNumber }}</td>
                                    </tr>


                                  
                                </tbody>
                            </table>
                        
                    </div>
                </div>
            </div>


            <div class="flex flex-col">
                <div class=" sm:-mx-6 lg:-mx-8">
                    <div class="inline-block min-w-full py-1 sm:px-6 lg:px-8">
                     
                            <table class="min-w-full border  text-sm font-light dark:border-neutral-500 justify-start">
                               
                                <tbody>
                                    <tr class="border-b"  v-for="(equi2, index) in equipo.caracteristicas">
                                        <td colspan="2" class="whitespace-nowrap border-r py-1 bg-gray-100 w-3/12 font-semibold pl-2"> {{ equi2.caracteristicaLang }} </td>
                                        <td colspan="3" class="whitespace-nowrap py-1 pl-2">{{ equi2.valor }}</td>
                                    </tr>   
                                </tbody>
                            </table>
                        
                    </div>
                </div>
            </div>

        </div>

        <!-- Lista de detalles en mobil  -->
     
    </div>
</template>
  
<script>
export default {
    props: ['equipo'],
    data() {
        return {
        }
    },
    methods: {
        detallesEquipo(idEquipo) {
            console.log('click en funcion: ' + idSe);
        }
    }
}

</script>
