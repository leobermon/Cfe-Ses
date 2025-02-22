<template>
    <div class=" py-4 container">
        <!-- Titulo del producto -->


        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
            <table class="w-full text-sm text-left rtl:text-right text-gray-500 ">
                <thead class="text-xs text-gray-700 uppercase ">
                    <tr>
                        <th scope="col" class="px-4 py-2 bg-gray-50 ">
                            Fecha
                        </th>
                        <th scope="col" class="px-4 py-2">
                            Version
                        </th>
                        <th scope="col" class="px-4 py-2 bg-gray-50 ">
                            Cambios
                        </th>

                    </tr>
                </thead>
                <tbody>
                    <tr class="border-b border-gray-200 dark:border-gray-700">
                        <th scope="row"
                            class="px-4 py-2 font-medium text-gray-900 whitespace-nowrap bg-gray-50 dark:text-white dark:bg-gray-800">
                            23-10-2024
                        </th>
                        <td class="px-4 py-2">
                            1.3
                        </td>
                        <td class="px-4 py-2 bg-gray-50 dark:bg-gray-800">

                            <ul class="list-disc">
                                <li>Se agrega opcion de Ultima milla desde el menu principal .Ahora se puede visualizar un
                                    mapa de
                                    las rutas y la ubicacion de las torres/postes que conforman la ultima milla de fibra
                                    optica en la
                                    ciudad</li>

                                <li>Se agrega la opcion Mapa de UTR desde el menu principal , Ahora se puede visualizar un
                                    diagrama que nos muestra como esta conectado las utr de las subesatciones </li>

                                    <li>Se agrega el apartado PatchNotes donde se ven los cambios agregados a la ultima version </li>

                                    <li>Se corrigen iconos del menu principal , anteriormente estas imagenes estaban desfazadas </li>

                            </ul>


                        </td>
                    </tr>

                    <tr class="border-b border-gray-200 dark:border-gray-700">
                        <th scope="row"
                            class="px-4 py-2 font-medium text-gray-900 whitespace-nowrap bg-gray-50 dark:text-white dark:bg-gray-800">
                            26-09-2024
                        </th>
                        <td class="px-4 py-2">
                            1.2
                        </td>
                        <td class="px-4 py-2 bg-gray-50 dark:bg-gray-800">

                            <ul class="list-disc">
                                <li>Se agrega opcion de Ultima milla de las rutas de Tulum . Ahora se puede visualizar la ruta de la ultima milla desdela subestacion TULUM a la AGENCIA CFE TULUM </li>


                            </ul>


                        </td>
                    </tr>


                </tbody>
            </table>
        </div>


    </div>
</template>

<script>
import RenderImage from '../components/RenderImage.vue'


export default {
    props: ['idProduct'],
    data() {
        return {
            notas: ''
        }
    },
    methods: {

    }
}

</script>