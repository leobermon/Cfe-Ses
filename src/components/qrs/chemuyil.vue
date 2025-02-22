<template>
    <div class="hello">
        <h1>
        CHEMUYIL
        </h1>

        <h1> G A B I N E T E S </h1>
        <div class="container">
            <h1>{{ nombre }}</h1>


            <div class="grid grid-cols-3 gap-3 text-center">
                <div v-for="(device, index) in subestacion" :key="index" class="">


                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="('http://10.28.76.118:8080/' + device.tipo + '/' + device.idGabinete)"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">{{ device.nombre }}</h5>
                        </div>
                    </div>
                    <br>
                </div>

            </div> 



        </div>

        <h1> G A B I N E T E S </h1>
        <div class="container">
            <h1>{{ nombre }}</h1>


            <div class="grid grid-cols-3 gap-3 text-center">
                <div v-for="(device, index) in subestacion" :key="index" class="">
                    <div class="border-solid border-4 py-6 border-black rounded-lg ">
                        
                        <div class="card-body" style=" padding: 0rem !important;">
                            <h5 class="text-[120px] font-bold">{{ device.nombre }}</h5>
                        </div>
                    </div>
                    <br>
                </div>

            </div>

        </div>

        <h1> PAGINAS </h1>
        <div class="container">

            <div class="grid grid-cols-3 gap-3 text-center">

                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="'http://10.28.76.118:8080/directorio'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">Directorio</h5>
                        </div>
                    </div>

                    <div class="border-solid border-4 border-black rounded-lg ">
                        <qrcode-vue :value="'http://10.28.76.118:8080/plano/10'"
                            :size="size" level="H" :margin="1" />
                        <div class="card-body" style="background-color:black; padding: 0rem !important;">
                            <h5 class="card-title text-on-card">S.E. CHY</h5>
                        </div>
                    </div>
               
            </div>

        </div>

    </div>
</template>
   
<script>

//import QrcodeVue from 'qrcode.vue'


export default {
    name: 'HelloWorld',
    props: {
        msg: String

    },
    data() {
        return {
            value: 'https://example.com',
            size: 215,
            nombre: 'PTP',
            subestacion: [

                { idGabinete: 291,tipo: 'rack', nombre: "A1	" },
                { idGabinete: 299,tipo: 'rack', nombre: "A2	" },
                { idGabinete: 300,tipo: 'rack', nombre: "A3	" },
                { idGabinete: 301,tipo: 'rack', nombre: "A4	" },
                { idGabinete: 302,tipo: 'rack', nombre: "A5	" },
                { idGabinete: 303, tipo: 'rack', nombre: "A6	" },
                { idGabinete: 304, tipo: 'rack', nombre: "A9	" },
                { idGabinete: 305, tipo: 'rack', nombre: "A10	" },
                { idGabinete: 306, tipo: 'rack', nombre: "A11	" },
                { idGabinete: 307, tipo: 'rack', nombre: "A12	" },
                { idGabinete: 308, tipo: 'rack', nombre: "A13	" },
                { idGabinete: 309, tipo: 'rack', nombre: "B1	" },
                { idGabinete: 310, tipo: 'rack', nombre: "B2	" },
                { idGabinete: 311, tipo: 'rack', nombre: "B3	" },
                { idGabinete: 312, tipo: 'rack', nombre: "B4	" },
                { idGabinete: 313, tipo: 'rack', nombre: "B5	" },
                { idGabinete: 314, tipo: 'rack', nombre: "B6	" },
                { idGabinete: 315, tipo: 'rack', nombre: "B7	" },
                { idGabinete: 316, tipo: 'rack', nombre: "B10	" },
                { idGabinete: 317, tipo: 'rack', nombre: "B11	" },
                { idGabinete: 318, tipo: 'rack', nombre: "B12	" },
                { idGabinete: 319, tipo: 'rack', nombre: "B13	" },
                { idGabinete: 320, tipo: 'rack', nombre: "C1	" },
                { idGabinete: 321, tipo: 'rack', nombre: "C2	" },
                { idGabinete: 322, tipo: 'rack', nombre: "C3	" },
                { idGabinete: 323, tipo: 'rack', nombre: "C4	" },
                { idGabinete: 324, tipo: 'rack', nombre: "C5	" },
                { idGabinete: 325, tipo: 'rack', nombre: "C8	" },
                { idGabinete: 326, tipo: 'rack', nombre: "C9	" },
                { idGabinete: 327, tipo: 'rack', nombre: "C10	" },
                { idGabinete: 328, tipo: 'rack', nombre: "C13	" },
                { idGabinete: 329, tipo: 'rack', nombre: "C14	" },
                { idGabinete: 330, tipo: 'rack', nombre: "C15	" },
                { idGabinete: 331, tipo: 'rack', nombre: "D1	" },
                { idGabinete: 332, tipo: 'rack', nombre: "D2	" },
                { idGabinete: 333, tipo: 'rack', nombre: "D3	" },
                { idGabinete: 334, tipo: 'rack', nombre: "D13	" },
                { idGabinete: 335, tipo: 'rack', nombre: "D14	" },
                { idGabinete: 336, tipo: 'rack', nombre: "D15	" },
                { idGabinete: 337, tipo: 'rack', nombre: "D16	" }
                


            ],
          
        }
    },
    methods: {
   

    },
    components: {
        QrcodeVue,
    },
}
</script>
  
  <!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.own {
    border: solid black 5px;
    border-radius: 10px;
    width: 260px;

}

.text-on-card {
    color: white;
    font-size: 45px;
    font-weight: bold;
}

.card-title {
    margin-bottom: 0 !important;
    margin-top: .5rem !important;
}
</style>
  