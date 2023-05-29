<template>
    <div>
        <!-- Lista de detalles, web -->
        <div class="hidden md:block py-2">
            <div class="grid grid-cols-12 py-2">

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">ID EQUIPO</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.id }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">TIPO DE EQUIPO</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.nombreTipoEquipo }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">MODELO</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.nombreModelo }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">MARCA</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.marcaNombre }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">NOMBRE</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.nombre }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">NUMERO R3</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.numeroR3 }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">NUMERO DE SERIE</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.serialNumber }}</div>

                <div class="col-span-3 bg-gray-300 border-b-2 border-gray-400 ">POSICION EN RACK</div>
                <div class="col-span-3 border-b-2 border-gray-300">{{ equipo.posicionRackStart }} - {{
                    equipo.posicionRackEnd }} </div>

            </div>
        </div>

        <!-- Lista de detalles en mobil  -->
        <div class="md:hidden">
            <table class="w-full text-sm text-left text-gray-500 border-2 border-gray-300">
                <tbody>
                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> ID EQUIPO</th>
                        <td class=""> {{ equipo.id }}</td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> TIPO DE EQUIPO </th>
                        <td class=""> {{ equipo.nombreTipoEquipo }}</td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> MODELO </th>
                        <td class=""> {{ equipo.nombreModelo }}</td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> MARCA </th>
                        <td class=""> {{ equipo.marcaNombre }} </td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> NOMBRE </th>
                        <td class=""> {{ equipo.nombre }}</td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> NUMERO R3</th>
                        <td class=""> {{ equipo.numeroR3 }} </td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> NUMERO DE SERIE</th>
                        <td class=""> {{ equipo.serialNumber }} </td>
                    </tr>

                    <tr class="border-b border-gray-400 dark:border-gray-700">
                        <th scope="row" class=" font-medium text-gray-900 bg-gray-200  "> POSICION EN RACK</th>
                        <td class=""> {{ equipo.posicionRackStart }} - {{ equipo.posicionRackEnd }} </td>
                    </tr>

                </tbody>
            </table>
        </div>
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