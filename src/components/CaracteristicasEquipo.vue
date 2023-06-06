<template>
    <div>

        <table class="w-full text-sm text-left border-2 border-gray-300">
            <tbody>
                <tr v-for="(equip, key) in equipo" class="border-b border-gray-400 dark:border-gray-700">
                    <th scope="row" class=" font-medium bg-gray-200  ">
                        {{ equip.caracteristicaLang }}
                    </th>
                    <td class="">
                        {{ equip.valor }}
                    </td>

                    
                </tr>
            </tbody>
        </table>

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
