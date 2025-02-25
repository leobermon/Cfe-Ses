<template>
    <div class="flex">

        <div class="invisible md:visible md:w-1/6 "> </div>

        <template v-if="exist">

            <div class="w-6/6 md:w-4/6 text-center text-[8px]   md:text-sm  ">

                <div class="p-4" >

                    <div class=" grid grid-cols-4 ">

                        <div style="padding: 4px;" class="border border-gray ">
                            <p  > NOMBRE: </p>
                            <p class="font-bold" > {{ actualSheet.nombre }} </p> 
                        </div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100"> 
                            <p> PM : </p>
                            <p class="font-bold" > {{ actualSheet.activo }} </p>   
                        </div>
                            <div style="padding: 4px;" class="border border-gray ">
                                <p> CONSECUTIVO: </p>
                                <p class="font-bold" > {{ actualSheet.codigo }} </p> 
                            </div>
                            <div style="padding: 4px;" class="border border-gray ">
                                <button @click="generateReport()" type="button" class=" text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-xs md:text-sm  px-5 py-2 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">Descargar PDF </button>
                
                            </div>
                    </div>
                    

                </div>

                <div id="PdfToGenerate">
                    <div class=" grid grid-cols-8 ">

                        <div style="padding: 4px;" class="col-span-6"> <img src="../assets/img/cabecera1.png" class="w-60"
                                alt=""> </div>
                        <div style="padding: 4px;" class="object-right col-span-2 "> <img src="../assets/img/cabecera2.png"
                                class="w-20 rigth" alt=""> </div>

                        <div style="padding: 4px;" class="border border-gray col-span-2 bg-gray-100">ZONA DE TRANSMISION
                        </div>
                        <div style="padding: 4px;" class="border border-gray col-span-3 ">CANCUN</div>
                        <div style="padding: 4px;" class="border border-gray col-span-3">
                            <P>Direccion General de la EPS Transmision </P>
                            <p>Gerencia Regional de Trasnmision Peninsular</p>
                        </div>

                        <div style="padding: 4px;" class="border border-gray col-span-2 bg-gray-100">SEGMENTO DE FIBRA
                            OPTICA</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">PUNTA A</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.puntaA }}</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">PUNTA B</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.puntaB }}</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">FIBRAS DISPONIBLES</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.disponible }}</div>


                        <div style="padding: 4px;" class="border border-gray col-span-2 bg-gray-100">CANTIDAD DE HILOS</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.fibras }}</div>
                        <div style="padding: 4px;" class="border border-gray col-span-2 bg-gray-100">SON FIBRAS DERIVADAS
                        </div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.derivadas }}</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">FIBRAS DANADAS</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.damaged }}</div>

                        <div style="padding: 4px;" class="border border-gray col-span-2 bg-gray-100">SEGMENTO DE FIBRA
                            OPTICA DERIVADO</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">PUNTA A</div>
                        <div style="padding: 4px;" class="border border-gray ">{{ datosHoja.derivadosPuntaA }}</div>
                        <div style="padding: 4px;" class="border border-gray bg-gray-100">PUNTA B</div>
                        <div style="padding: 4px;" class="border border-gray col-span=3">{{ datosHoja.derivadosPuntaB }}
                        </div>
                        <div style="padding: 4px;" class="border border-gray col-span-2"></div>


                    </div>

                    <div class="row-span-full bg-green">
                        <div class="grid grid-cols-8 mt-6">

                            <div class="font-bold bg-gray-200 border border-gray "> <label style="padding: 4px;"
                                    for="">FIBRA NO.</label> </div>
                            <div class="font-bold bg-gray-200 border border-gray col-span-2">USO</div>
                            <div class="font-bold bg-gray-200 border border-gray col-span-2">ESTADO DE LA FIBRA</div>
                            <div class="font-bold bg-gray-200 border border-gray col-span-3">SERVICIO</div>

                        </div>
                    </div>

                    <div class="row-span-full bg-green" v-for="item in items">

                        <div class="grid grid-cols-8">
                            <div style="padding: 4px;" class="border border-gray">{{ item[1] }}</div>
                            <div class="col-span-2 border border-gray">{{ item[2] }}</div>
                            <div class="col-span-2 border border-gray">{{ item[8] }}</div>
                            <div class="col-span-3 border border-gray">{{ item[10] }}</div>
                        </div>
                    </div>

                </div>

            </div>

           
        </template>
        <template v-else>
            <h1>NO EXISTE LA HOJA QUE ESTA BUSCANDO</h1>
        </template>

        <div class="invisible md:visible md:w-1/6 ..."> </div>

    </div>
</template>

<script>


import readXlsxFIle from 'read-excel-file'
import _ from 'lodash';
import html2pdf from 'html2pdf.js'

export default {
    components: {
        html2pdf
    },
    props: ['fo'],
    data() {
        return {
            DetallesEquipo: [],
            items: [],
            actualSheet: {},
            exist: false,
            fiberExist: false,
            datosHoja: []

        }
    },

    methods: {
        generateReport() {
            const opt = {
                margin: 5,
                filename: this.actualSheet.nombre + '-' + this.actualSheet.codigo + '.pdf',
            }
            const element = document.getElementById('PdfToGenerate')
            html2pdf().set(opt).from(element).save();
        },
        async ConsultarHoja() {
            console.log('entra en funcion ConsultarHoja');
            await fetch('../src/views/test2.xlsx')
                .then(response => response.blob())
                .then(blob => readXlsxFIle(blob, { sheet: this.actualSheet.codigo }))
                .then((rows2) => {
                    // `rows` is an array of rows
                    console.log('SE REALIZA LA CONSULTA DEL NOMBRE DE LA HOJA ');
                    //this.items = rows2
                    var existeFibra = false
                    var solofibras = []
                    var count = 0;
                    var datosHoja = {}

                    _.forEach(rows2, function (value, key) {


                        if (existeFibra) {
                            solofibras.push(value)
                        }


                        var reglas = [8, 9, 10] //estos son  las lineas del excel que muestran los datos
                        if (reglas.includes(key)) {
                            if (key == 8) {

                                datosHoja.puntaA = value[5]
                                datosHoja.puntaB = value[7]
                                datosHoja.disponible = value[9]

                            } else if (key == 9) {

                                datosHoja.fibras = value[3]
                                datosHoja.derivadas = value[6]
                                datosHoja.damaged = value[9]

                            } else if (key == 10) {

                                datosHoja.derivadosPuntaA = value[5]
                                datosHoja.derivadosPuntaB = value[7]

                            }


                            console.log(value);
                        }



                        if (value[1] == 'FIBRA NO.') {
                            existeFibra = true
                        }


                        count++
                    });

                    this.items = solofibras
                    this.datosHoja = datosHoja



                })
        },
        async subirExcel() {

            // readXlsxFIle(input.files[0]).then((rows) => {
            // this.items = rows;
            // })

            try {

                const resultado = await fetch('../src/views/test2.xlsx')
                    .then(response => response.blob())
                    .then(blob => readXlsxFIle(blob, { sheet: 'CODIGOS' }))
                    .then((rows) => {
                        // `rows` is an array of rows
                        console.log(rows);

                        const actualFo = this.fo
                        var temp = []

                        _.forEach(rows, function (value) {

                            if (actualFo == value[2]) {
                                temp = {
                                    num: value[1],
                                    activo: value[2],
                                    codigo: value[3],
                                    nombre: value[4],
                                }
                                return false
                            }
                        });

                        ///empezamos desde la 8 para 

                        this.actualSheet = temp

                        if (_.isEmpty(this.actualSheet)) {
                            console.log('no existe la hoja ');
                            this.exist = false

                            return false
                        } else {
                            //this.noExist = true
                            this.exist = true

                            console.log('si existe la hoja buscamos otra vez ');
                            console.log('llamamos a la funcion para consultar ');
                            return true

                        }

                    })

                if (resultado) {
                    console.log('si se obtiene resultado');
                    this.ConsultarHoja()

                }


            } catch (error) {

            }

        }

    },

    created() {
        this.subirExcel()
    }
}

</script>

