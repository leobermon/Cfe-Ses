<template>
    <p class="mb-3 text-center text-gray-500 ">
    <h2 class="text-4xl font-bold ">ENLACES OPLAT </h2>
    </p>

    <center>

        <GoogleMap api-key="AIzaSyDcSa_dd4vPlcEFJZLzsLt-f75X79aSzM0" :style="estilosMapa" :center="center" :zoom="10"
            :min-zoom="9" :max-zoom="16" :restriction="restriction" :styles="estilosMapa">

            <Polyline :options="VadBlm" />
            <Polyline :options="Blm93060Niz" />
            <Polyline :options="VadNiz" />
            <Polyline :options="CexTin" />
            <Polyline :options="TinNiz" />
            <Polyline :options="Niz93040Rmy" />
            <Polyline :options="Niz97170Rmy" />

            <Polyline :options="PcnRmy" />
            <Polyline :options="DztRmy" />

            <template v-for="a in subestaciones">

                <Marker :options="{ position: a, icon: icon }">

                    <InfoWindow v-if="a.equipos && a.equipos.length > 0">
                        <div id="content"
                            :class="[(equipo.idEquipo > 0) ? 'place-content-center bg-slate-200 mt-4 cursor-pointer' : 'place-content-center bg-slate-200 mt-4']"
                            @click="VerEquipo(equipo.idEquipo)" v-for="equipo in a.equipos">
                            <h2 id="firstHeading"
                                class="firstHeading text-xl font-bold text-center  border border-2 border-black "> {{
                                    equipo.nombre }}
                            </h2>
                            <div id="bodyContent">
                                <p class="place-content-center">
                                    <img src="../../assets/img/imgMaps/OPLAT.svg" alt="">
                                </p>

                            </div>
                        </div>
                    </InfoWindow>

                </Marker>

                <CustomMarker :options="{ position: a, anchorPoint: 'TOP_CENTER' }"
                    class="bg-gray-100 rounded-lg p-0.5 border-double border-2 border-indigo-600">
                    <div style="text-align: center">
                        <div style="font-size: 1.125rem" class="font-bold"> S.E. {{ a.abrev }} </div>
                    </div>
                </CustomMarker>

            </template>

        </GoogleMap>
    </center>
</template>
  
<script>
import { GoogleMap, Marker, InfoWindow, Polyline, CustomMarker } from "vue3-google-map";
import photo1 from '@/assets/img/imgMaps/torre.svg'

export default {
    components: { GoogleMap, Marker, Polyline, InfoWindow, CustomMarker },
    data() {
        return {
            center: { lat: 20.8966297, lng: -87.489809 },
            subestaciones: [
                { lat: 20.692569, lng: -88.194927, abrev: 'VAD', nombre: 'VALLADOLID', equipos: [{ nombre: 'VAD-93050-BLM', idEquipo: 0 }, { nombre: 'VAD-93070-NIZ', idEquipo: 0 }] },
                { lat: 20.686466, lng: -88.263579, abrev: 'DZT', nombre: 'DZINUP', equipos: [{ nombre: 'DZT-A3Q60-RMY', idEquipo: 0 }, { nombre: 'DZT-A3Q70-RMY', idEquipo: 0 }] },
                { lat: 20.897165, lng: -87.489619, abrev: 'TIN', nombre: 'TINTAL', equipos: [{ nombre: 'TIN-73480-NIZ', idEquipo: 112 }, { nombre: 'TIN-73C80-CEX', idEquipo: 111 }] },
                { lat: 21.186525, lng: -86.849396, abrev: 'BLM', nombre: 'BALAM', equipos: [{ nombre: 'BLM-93050-VAD', idEquipo: 146 }, { nombre: 'BLM-93060-NIZ', idEquipo: 147 }] },
                { lat: 21.066734, lng: -86.847080, abrev: 'NIZ', nombre: 'NIZUC', equipos: [{ nombre: 'TIN-73480-NIZ', idEquipo: 255 }, { nombre: 'BLM-93060-NIZ', idEquipo: 30 }, { nombre: 'VAD-93070-NIZ', idEquipo: 1 }, { nombre: 'NIZ-93170-RMY', idEquipo: 44 }, { nombre: 'NIZ-93040-RMY', idEquipo: 29 }] },
                { lat: 20.832738, lng: -86.930132, abrev: 'RMY', nombre: 'RIVIERA MAYA', equipos: [{ nombre: 'DZT-A3Q60-RMY', idEquipo: 150 }, { nombre: 'DZT-A3Q70-RMY', idEquipo: 151 }, { nombre: 'RMY-93170-NIZ', idEquipo: 152 }, { nombre: 'RMY-93040-NIZ', idEquipo: 153 }, { nombre: 'RMY-93190-PCN', idEquipo: 154 }, { nombre: 'RMY-93180-PCN', idEquipo: 155 }] },
                { lat: 20.630698, lng: -87.082716, abrev: 'PCN', nombre: 'PLAYA DEL CARMEN', equipos: [{ nombre: 'RMY-93190-PCN', idEquipo: 148 }, { nombre: 'RMY-93180-PCN', idEquipo: 149 }] },
                { lat: 20.661422, lng: -87.924403, abrev: 'CEX', nombre: 'CHEMAX', equipos: [{ nombre: 'CEX-73C80-TIN', idEquipo: 0 }] }
            ],
            VadBlm: {
                path: [
                    { lat: 20.692569, lng: -88.194927 },
                    { lat: 20.661422, lng: -87.924403 },
                    { lat: 20.664375, lng: -87.919052 },
                    { lat: 20.848803, lng: -87.663574 },
                    { lat: 20.868501, lng: -87.539522 },
                    { lat: 20.877840, lng: -87.483942 },
                    { lat: 20.893564, lng: -87.440363 },
                    { lat: 20.979144, lng: -87.202361 },
                    { lat: 20.982317, lng: -87.196809 },
                    { lat: 20.991624, lng: -87.180663 },
                    { lat: 20.998736, lng: -87.169259 },
                    { lat: 21.087335, lng: -86.997576 },
                    { lat: 21.089785, lng: -86.997121 },
                    { lat: 21.134532, lng: -86.997545 },
                    { lat: 21.139826, lng: -86.992906 },
                    { lat: 21.142777, lng: -86.936301 },
                    { lat: 21.185175, lng: -86.850545 },
                    { lat: 21.186044, lng: -86.850586 },
                    { lat: 21.186425, lng: -86.849396 }
                ],
                geodesic: true,
                strokeColor: "#FF0000",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            Blm93060Niz: {
                path: [
                    { lat: 21.066734, lng: -86.847080 },
                    { lat: 21.067730, lng: -86.846853 },
                    { lat: 21.073011, lng: -86.887242 },
                    { lat: 21.072597, lng: -86.890178 },
                    { lat: 21.086767, lng: -86.997743 },
                    { lat: 21.087013, lng: -86.997757 },
                    { lat: 21.088036, lng: -86.997545 },
                    { lat: 21.089725, lng: -86.997213 },
                    { lat: 21.134659, lng: -86.997772 },
                    { lat: 21.139926, lng: -86.992906 },
                    { lat: 21.142877, lng: -86.936301 },
                    { lat: 21.185275, lng: -86.850545 },
                    { lat: 21.186144, lng: -86.850586 },
                    { lat: 21.186525, lng: -86.849396 },
                ],
                geodesic: true,
                strokeColor: "#1a1a17",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            VadNiz: {
                path: [
                    { lat: 20.692569, lng: -88.194927 },
                    { lat: 20.661222, lng: -87.924403 },
                    { lat: 20.664175, lng: -87.919052 },
                    { lat: 20.848603, lng: -87.663574 },
                    { lat: 20.868301, lng: -87.539522 },
                    { lat: 20.877640, lng: -87.483942 },
                    { lat: 20.893364, lng: -87.440363 },
                    { lat: 20.978944, lng: -87.202361 },
                    { lat: 20.982117, lng: -87.196809 },
                    { lat: 20.991424, lng: -87.180663 },
                    { lat: 20.991424, lng: -87.180663 },
                    { lat: 21.086553, lng: -86.997726 },
                    { lat: 21.072780, lng: -86.887201 },
                    { lat: 21.072210, lng: -86.883554 },
                    { lat: 21.067280, lng: -86.848244 }
                ],
                geodesic: true,
                strokeColor: "#5346e3",
                strokeOpacity: 1,
                strokeWeight: 3,
                zindex: 100
            },
            CexTin: {
                path: [
                    { lat: 20.661422, lng: -87.924403 },
                    { lat: 20.897165, lng: -87.489619 }
                ],
                geodesic: true,
                strokeColor: "#e625d2",
                strokeOpacity: .5,
                strokeWeight: 3
            },
            TinNiz: {
                path: [
                    { lat: 20.897165, lng: -87.489619 },
                    { lat: 20.897230, lng: -87.489517 },
                    { lat: 20.900571, lng: -87.469564 },
                    { lat: 20.884130, lng: -87.468321 },
                    { lat: 20.976017, lng: -87.213007 },
                    { lat: 21.088324, lng: -86.995758 },
                    { lat: 21.068024, lng: -86.848244 },
                    { lat: 21.066734, lng: -86.847080 }

                ],
                geodesic: true,
                strokeColor: "#e625d2",
                strokeOpacity: .5,
                strokeWeight: 3
            },
            Niz93040Rmy: {
                path: [
                    { lat: 21.066734, lng: -86.847080 },
                    { lat: 21.067730, lng: -86.846853 },
                    { lat: 21.067856, lng: -86.850663 },
                    { lat: 21.074468, lng: -86.908206 },
                    { lat: 21.058761, lng: -86.919566 },
                    { lat: 21.055142, lng: -86.919088 },
                    { lat: 21.042716, lng: -86.904153 },
                    { lat: 20.949070, lng: -86.870844 },
                    { lat: 20.872775, lng: -86.895104 },
                    { lat: 20.873441, lng: -86.897563 },
                    { lat: 20.884541, lng: -86.921937 },
                    { lat: 20.883372, lng: -86.925615 },
                    { lat: 20.863964, lng: -86.935713 },
                    { lat: 20.837508, lng: -86.937777 },
                    { lat: 20.836576, lng: -86.937012 },
                    { lat: 20.836179, lng: -86.932757 },
                    { lat: 20.833600, lng: -86.931837 },
                    { lat: 20.832738, lng: -86.930132 }
                ],
                geodesic: true,
                strokeColor: "#fa6125",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            Niz97170Rmy: {
                path: [
                    { lat: 21.066534, lng: -86.847080 },
                    { lat: 21.067530, lng: -86.846853 },
                    { lat: 21.067656, lng: -86.850663 },
                    { lat: 21.074268, lng: -86.908206 },
                    { lat: 21.058561, lng: -86.919566 },
                    { lat: 21.054942, lng: -86.919088 },
                    { lat: 21.042516, lng: -86.904153 },
                    { lat: 20.948870, lng: -86.870844 },
                    { lat: 20.872575, lng: -86.895104 },
                    { lat: 20.873241, lng: -86.897563 },
                    { lat: 20.884341, lng: -86.921937 },
                    { lat: 20.883172, lng: -86.925615 },
                    { lat: 20.863764, lng: -86.935713 },
                    { lat: 20.837308, lng: -86.937777 },
                    { lat: 20.836276, lng: -86.937012 },
                    { lat: 20.835979, lng: -86.932757 },
                    { lat: 20.833400, lng: -86.931837 },
                    { lat: 20.832538, lng: -86.930132 }
                ],
                geodesic: true,
                strokeColor: "#026934",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            PcnRmy: {
                path: [
                    { lat: 20.832738, lng: -86.930132 },
                    { lat: 20.833411, lng: -86.928753 },
                    { lat: 20.830838, lng: -86.926965 },
                    { lat: 20.830580, lng: -86.922920 },
                    { lat: 20.828632, lng: -86.920438 },
                    { lat: 20.701318, lng: -87.028355 },
                    { lat: 20.631080, lng: -87.082182 },
                    { lat: 20.630698, lng: -87.082716 }
                ],
                geodesic: true,
                strokeColor: "#b811fa",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            DztRmy: {
                path: [
                    { lat: 20.832738, lng: -86.930132 },
                    { lat: 20.832812, lng: -86.931958 },
                    { lat: 20.831325, lng: -86.935305 },
                    { lat: 20.838994, lng: -87.056672 },
                    { lat: 20.866579, lng: -87.073640 },
                    { lat: 20.962976, lng: -87.158939 },
                    { lat: 20.974247, lng: -87.181976 },
                    { lat: 20.964585, lng: -87.235905 },
                    { lat: 20.963010, lng: -87.244404 },
                    { lat: 20.877034, lng: -87.483320 },
                    { lat: 20.855817, lng: -87.618076 },
                    { lat: 20.847954, lng: -87.663232 },
                    { lat: 20.679498, lng: -87.895508 },
                    { lat: 20.641250, lng: -87.934629 },
                    { lat: 20.654064, lng: -88.150402 },
                    { lat: 20.655777, lng: -88.180892 },
                    { lat: 20.659082, lng: -88.237291 },
                    { lat: 20.682161, lng: -88.254157 },
                    { lat: 20.682640, lng: -88.259452 },
                    { lat: 20.685105, lng: -88.262840 },
                    { lat: 20.686466, lng: -88.263579 }
                ],
                geodesic: true,
                strokeColor: "#0320fc",
                strokeOpacity: 1,
                strokeWeight: 3
            },
            restriction: {
                latLngBounds: {
                    north: 22,
                    south: 20,
                    east: -84,
                    west: -90,
                }
            },

            estilosMapa: [
                { "width": (window.innerWidth <= 768) ? "100%" : "80%" },
                { "height": (window.innerHeight - 300) + 'px' },
                {
                    "featureType": "poi.business",
                    "stylers": [{ "visibility": "off" }],
                },
                {
                    featureType: "transit",
                    elementType: "labels.icon",
                    stylers: [{ visibility: "off" }],
                }
            ]
        }
    },
    methods: {
        VerEquipo(idEquipo) {
            if (idEquipo > 0) {
                console.log('se presiona el boton');
                window.location.href = "http://192.168.1.78:5173/rack/" + idEquipo;
            } else {
                console.log('no hay idEquipo');
            }

        }
    },
    computed: {
        icon() {
            return {
                url: photo1,
                scaledSize: { width: 27, height: 39 }
            };
        },
    }
}


</script>

