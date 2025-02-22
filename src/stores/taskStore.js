import { defineStore } from 'pinia'

export const useTaskStore = defineStore('taskStore', {
    state: () => ({
        subestaciones: [],
        instalaciones: [],
        currentSubestacion: [],
        currentInstalaciones: [],
        equiposGabinete: [],
        currentRack: 0,
        currentRackName: '',
        dbConnection: true,
        ipAddress: "http://192.168.1.80:5000",
        ipLocalServ: "http://192.168.1.80:5173",
        gabineteFiles: []
    }),
    getters: {
        listaUltimasMillas() {
            return [
                { id: 1, checked:true, name:'PE.ZTCNC.0001' , nombre: 'Milla Alestra ', tramo: 'ALESTRA - HTGCNC', distancia: '1.65 KM' },
                { id: 2, checked:false, name:'PE.ZTCNC.0002' , nombre: 'SCT CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '1.1 KM' },
                { id: 3, checked:false, name:'PE.ZTCNC.0003' , nombre: 'SCT PJU  ', tramo: 'ALESTRA - HTGCNC', distancia: '3.8 KM' },
                { id: 4, checked:false, name:'PE.ZTCNC.0004' , nombre: 'ZDD CNC  ', tramo: 'ALESTRA - HTGCNC', distancia: '1.3 KM' },
                { id: 5, checked:true, name:'PE.ZTCNC.0005' , nombre: ' ALESTRA CNC ', tramo: 'ALESTRA - HTGCNC', distancia: ' 2 KM' },
                { id: 6, checked:false, name:'PE.ZTCNC.0006' , nombre: ' PROFECO CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '1 KM' },
                { id: 7, checked:false, name:'PE.ZTCNC.0007' , nombre: ' SE KUKULKAN ', tramo: 'ALESTRA - HTGCNC', distancia: '1.9 KM' },
                { id: 8, checked:false, name:'PE.ZTCNC.0008' , nombre: ' COPPEL', tramo: 'ALESTRA - HTGCNC', distancia: '2.89 KM' },
                { id: 9, checked:false, name:'PE.ZTCNC.0009' , nombre: ' ZDD R96', tramo: 'ALESTRA - HTGCNC', distancia: '5.9  KM' },
                { id: 11, checked:false, name:'PE.ZTCNC.0011' , nombre: ' SCJ CNC', tramo: 'ALESTRA - HTGCNC', distancia: ' 1 KM' },
                { id: 29, checked:false, name:'PE.ZTCNC.0029' , nombre: 'HTGCNC - SE CNC ', tramo: 'ALESTRA - HTGCNC', distancia: '4 KM' },
                { id: 30, checked:false, name:'PE.ZTCNC.0030' , nombre: 'SE CNC  - AGE PTE    ', tramo: 'ALESTRA - HTGCNC', distancia: '11.86 KM' },
                { id: 36, checked:false, name:'PE.ZTCNC.0036' , nombre: 'PJF - SE KUK ', tramo: 'ALESTRA - HTGCNC', distancia: '2.3 KM' },
                { id: 37, checked:false, name:'PE.ZTCNC.0037' , nombre: 'ZDD R96 - PJF', tramo: 'ALESTRA - HTGCNC', distancia: '2.39 KM' },
                { id: 47, checked:false, name:'PE.ZTCNC.0047' , nombre: 'ALESTRA - SE CNC', tramo: 'ALESTRA - HTGCNC', distancia: '0.92 KM' },
                { id: 61, checked:false, name:'PE.ZTCNC.0061' , nombre: 'ZDD R96 - AGE PTE ', tramo: 'ALESTRA - HTGCNC', distancia: '5.23 KM' },
                { id: 67, checked:false, name:'PE.ZTCNC.0067' , nombre: 'SCT CNC - ZDD CNC', tramo: 'ALESTRA - HTGCNC', distancia: '1.5 KM' },
                { id: 68, checked:false, name:'PE.ZTCNC.0068' , nombre: 'COPPEL - SE CNC', tramo: 'ALESTRA - HTGCNC', distancia: '1.89 KM' }
            ]
        },
    
        //     return this.task.reduce((p,c) => {
        //         return c.isFav ? p + 1 : p ;
        //     }, 0 )
        // },
        // //we cant use "this." In arrow functions handle 
        // //we have to use state inside parenthesis 
        // totalCount: (state) => {
        //     return state.task.length;
        // }
    },
    actions: {
        async getSubestaciones() {
            try {
                const res = await fetch(this.ipAddress + '/subestaciones')
                const data = await res.json()
                this.subestaciones = data

            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getInstalaciones() {
            try {
                const res2 = await fetch(this.ipAddress + '/instalaciones')
                const data2 = await res2.json()
                this.instalaciones = data2
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getEquipos() {
            try {
                const res3 = await fetch(this.ipAddress + '/equipos/' + this.currentRack)
                const data3 = await res3.json()
                this.equiposGabinete = data3
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getFilesGabinete() {
            try {
                const res4 = await fetch(this.ipAddress + '/archivos/' + this.currentRack)
                const data4 = await res4.json()
                this.gabineteFiles = data4
            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        },
        async getInfoGabinete() {
            try {
                const res4 = await fetch(this.ipAddress + '/gabinete/' + this.currentRack)
                const data4 = await res4.json()


                this.currentSubestacion.alias = data4[0].abrev
                this.currentRackName = data4[0].etiqueta

            } catch (error) {
                this.dbConnection = false
                console.log('Error conexion DB')
            }
        }

    }
})
