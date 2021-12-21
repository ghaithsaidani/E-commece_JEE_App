package com.example.ilprojetfinale.model;

public class produit {
    private long  id;
    private  String produit ;
    private float prix;
    private String description;
    private String type;

    public produit(long id, String produit, float prix, String description, String type) {
        this.id = id;
        this.produit = produit;
        this.prix = prix;
        this.description = description;
        this.type = type;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getProduit() {
        return produit;
    }

    public void setProduit(String produit) {
        this.produit = produit;
    }

    public float getPrix() {
        return prix;
    }

    public void setPrix(float prix) {
        this.prix = prix;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
