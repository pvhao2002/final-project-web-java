package net.enity;

import org.codehaus.jackson.annotate.JsonIgnore;

import javax.persistence.*;
import java.util.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name = "informations")
@NamedQueries({
        @NamedQuery(name = "Information.countAll", query = "SELECT COUNT(*) FROM Information p"),
        @NamedQuery(name = "Information.getProductById", query = "SELECT p FROM Product p join Information c ON p.infoId.infoId = c.infoId and p.infoId.infoId = :infoId")
})
public class Information implements java.io.Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "infoId")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer infoId;

    // camera truoc
    @Column(name = "cameraSelfie")
    private String cameraSelfie;

    // camera sau
    @Column(name = "cameraSau")
    private String cameraSau;

    @Column(name = "rom")
    private String rom;

    @Column(name = "ram")
    private String ram;

    // dung luong pin
    @Column(name = "cell")
    private String cell;

    @Column(name = "cpu")
    private String cpu;

    @Column(name = "manhinh")
    private String manhinh;

    // he dieu hanh: ios or android
    @Column(name = "os")
    private String os;

    @Column(name = "thenho")
    private String thenho;

    @OneToMany(mappedBy = "infoId", cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<Product> products;

    public Information() {
    }

    public Information(Integer infoId, String cameraSelfie, String cameraSau, String rom, String ram, String cell, String cpu, String manhinh, String os, String thenho, Set<Product> products) {
        this.infoId = infoId;
        this.cameraSelfie = cameraSelfie;
        this.cameraSau = cameraSau;
        this.rom = rom;
        this.ram = ram;
        this.cell = cell;
        this.cpu = cpu;
        this.manhinh = manhinh;
        this.os = os;
        this.thenho = thenho;
        this.products = products;
    }

    public Integer getInfoId() {
        return infoId;
    }

    public void setInfoId(Integer infoId) {
        this.infoId = infoId;
    }

    public String getCameraSelfie() {
        return cameraSelfie;
    }

    public void setCameraSelfie(String cameraSelfie) {
        this.cameraSelfie = cameraSelfie;
    }

    public String getCameraSau() {
        return cameraSau;
    }

    public void setCameraSau(String cameraSau) {
        this.cameraSau = cameraSau;
    }

    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getManhinh() {
        return manhinh;
    }

    public void setManhinh(String manhinh) {
        this.manhinh = manhinh;
    }

    public String getOs() {
        return os;
    }

    public void setOs(String os) {
        this.os = os;
    }

    public String getThenho() {
        return thenho;
    }

    public void setThenho(String thenho) {
        this.thenho = thenho;
    }

    public Set<Product> getProducts() {
        return products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }

    @Override
    public String toString() {
	return "Information{" + "infoId=" + infoId + ", cameraSelfie=" + cameraSelfie + ", cameraSau=" + cameraSau + ", rom=" + rom + ", ram=" + ram + ", cell=" + cell + ", cpu=" + cpu + ", manhinh=" + manhinh + ", os=" + os + ", thenho=" + thenho + ", products=" + products + '}';
    }

}
