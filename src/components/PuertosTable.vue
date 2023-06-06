<template>
    <div>

        <div class="flex flex-col">
            <div class="">
                <div class="inline-block min-w-full  ">
                    <div class="overflow-hidden">
                        <table class="min-w-full border text-center text-[10px] font-light dark:border-neutral-500">
                            <thead class="border-b font-medium dark:border-neutral-500 bg-gray-300 ">
                                <tr>
                                    <th colspan="3" class="border-r dark:border-neutral-500">   PUERTOS Y SERVICIOS DEL EQUIPO </th>
                                    
                                    
                                </tr>
                            </thead>
                            <thead class="border-b font-medium dark:border-neutral-500 bg-gray-300 ">
                                <tr>
                                    <th class="border-r dark:border-neutral-500">   ORIGEN  </th>
                                    <th class="border-r dark:border-neutral-500">   DESTINO  </th>
                                    <th colspan="3" class="border-r dark:border-neutral-500"> SERVICIO </th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="border-b dark:border-neutral-500"  v-for="puerto in puertos">
                                    <td class="whitespace-nowrap border-r font-medium dark:border-neutral-500 text-left  ">
                                        <p> SE : {{ puerto.dir_origen }}  </p>
                                        <p>PT: {{ puerto.numero_de_puerto }} </p>
                                    </td>
                                    <td class="whitespace-nowrap border-r dark:border-neutral-500 ">
                                        <P> SE: {{ puerto.dir_destino }} </P>
                                        <!-- <p>PT: {{ puerto.numero_de_puerto }} LC </p> -->
                                    </td>
                                    <td colspan="2" rowspan="1" class="whitespace-nowrap border-r dark:border-neutral-500">
                                        {{ puerto.servicio }}
                                        <p class="text-[9px] text-blue-500 " >{{ puerto.observacion }}</p>
                                        
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

      
    </div>
</template>
  
<script>
export default {
    props: ['puertos'],
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