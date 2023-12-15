/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pert2;

/**
 *
 * @author Asus
 */
public class MHS {
    private String nim, nama;
    private float nilakhir;

    public String getNim() {
        return nim;
    }

    public void setNim(String nim) {
        this.nim = nim;
    }

    public String getNama() {
        return nama;
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public float getUts() {
        return uts;
    }

    public void setUts(float uts) {
        this.uts = uts;
    }

    public float getUas() {
        return uas;
    }

    public void setUas(float uas) {
        this.uas = uas;
    }
    private float uts, uas;
    private double Nilakhir;
    private String Grade;
    
    public double getNilAkhir(){
        nilakhir= (uts + uas)/2;
        return nilakhir;
    }
    
    public String getGrade(){
       if (nilakhir<50)
           Grade="E";
       else if(nilakhir<60)
           Grade="D";
       else if(nilakhir<70)
           Grade="C";
       else if(nilakhir<80)
           Grade="B";
       else
           Grade="A";
       
       return Grade;
    }
}

