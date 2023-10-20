<template>
    <div class="md:container py-8">

        <div class="grid grid-cols-12 py-2 bg-white container border-2 border-r-gray-200">
            <div class="col-span-12 ">
                <h5 class="mb-2 text-2xl font-bold tracking-tight text-gray-900 ">SUBESTACION NIZUC "NIZ"
                </h5>
            </div>

            <div class="col-span-12 ">
                <p class="font-normal text-gray-700 dark:text-gray-400"> Seleccione el gabinete donde desea visualizar los equipos y obtener informacion </p>
                <br>

                <p class="text-gray-500 text-right text-sm " >Ultima actualizacion, Junio del 2023</p>
            </div>
            

        </div>

        <br />

        <div class="">
            <table class="w-full text-sm text-left text-gray-500 ">

                <tbody>
                    <!-- pared  arriba-->
                    <tr>
                        <td class="p-2  bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 bg-gray-400"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class="p-4"></td>
                        <td class=""></td>
                        <td class="p-4"></td>
                        <td class=""></td>
                        <td class="p-4"></td>
                        <td class=""></td>
                        <td class="p-4"></td>
                        <td class=""></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td class="p-2"></td>
                        <td ></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="px-1 py-1 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C1 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B1 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A1 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td ></td>
                    </tr>

                  
                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C2 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B2 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A2 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td ></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C3 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B3 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A3 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td ></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C4 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B4 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A4 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td ></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C5 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B5 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A5 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C6 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B6 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A6 </td>
                        <td class=""></td>
                        <td ></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="">Baño</td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-100 "> C7 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B7 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A7 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D14 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C8 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B8 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> A8 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D10 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D11 </td>
                        <td ></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D15 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C9 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B9 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A9 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D1 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D12 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>
                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C10 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B10 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A10 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D2 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D13 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D16 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C11 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-cyan-100 cursor-pointer hover:bg-cyan-300"
                            @click="verGabinete(145, 'D15', 'cargadores')"> B11 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A11 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D3 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D17 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C12 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B12 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A12 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D4 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C13 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B13 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A13 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D5 </td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D18 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C14 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B14 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A14 </td>
                        <td class=""></td>
                        <td ></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D19 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C15 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B15 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A15 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D6 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D7 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D8 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D9 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> D20 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C16 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B16 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A16 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C17 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B17 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A17 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td ></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C21 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C22 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C23 </td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C18 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B18 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A18 </td>
                        <td class=""></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C19 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B19 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A19 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td ></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C24 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C25 </td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C26 </td>
                        <td ></td>
                        <td ></td>
                        <td ></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C20 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B20 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A20 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C21 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B21 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A21 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C22 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B22 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A22 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C23 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B23 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A23 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>

                        <td colspan="3" >Cuarto de Baterias</td>
                        

                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C24 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B24 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A24 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C25 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B25 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A25 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> C26 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> B26 </td>
                        <td class=""></td>
                        <td class="p-2 border-solid border-4 border-gray-500 font-bold text-center bg-gray-50 "> A26 </td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="bg-gray-400"></td>
                    </tr>

               

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class=""></td>
                        <td></td>
                        <td class=""></td>
                        <td></td>
                        <td class=""></td>
                        <td></td>
                        <td class=""></td>
                        <td class="bg-gray-400"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="p-2" > </td>
                        <td class="bg-gray-400"></td>
                    </tr>

                    <tr>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-200"></td>
                        <td class="bg-gray-200"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="p-2 bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
                        <td class="bg-gray-400"></td>
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
                this.taskS.currentRackName = name
                this.router.push('/cargadores/' + id )
                console.log('opcion 1 ');
            } else if (vista == "interruptores") {
                this.taskS.currentRack = id
                this.taskS.currentRackName = name
                this.router.push('/interruptores/' + id )
                console.log('opcion 2 ');
            } else {
                this.taskS.currentRack = id
                this.taskS.currentRackName = name
                this.router.push('/rack/' + id )
                console.log('opcion 3 ');
            }


        }
    }
}




</script>


