<template>
    <div>

        <p>NOTAS / OBSERVACIONES </p>
        <div class=" sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 sm:px-6 lg:px-8">

                <table class="min-w-full border  text-sm font-light dark:border-neutral-500 justify-start">

                    <tbody>
                        <tr class="border-b" v-for="(nota, index) in notas">
                            <td colspan="2" class="whitespace-nowrap border-r py-2 bg-gray-100 w-3/12 font-semibold pl-2">

                                <p> {{ nota.user }} </p>
                                <p>{{ nota.date }}</p>
                            </td>
                            <td colspan="3" class="whitespace-nowrap py-2 pl-2"> {{ nota.nota }} </td>
                        </tr>
                    </tbody>
                </table>

            </div>
        </div>
    </div>
</template>
  
<script>
import moment from 'moment'

export default {

    props: ['notas'],
    data() {
        return {
        }
    }
}
</script>