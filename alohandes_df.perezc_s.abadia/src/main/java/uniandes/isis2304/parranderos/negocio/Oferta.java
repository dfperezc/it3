package uniandes.isis2304.parranderos.negocio;

import java.sql.Timestamp;

public class Oferta implements VOOferta
{

	//ATRIBUTOS//
	
	private long id; //PK
	private Timestamp fechaFin; 
	private Timestamp fechaInicio;
	private int diasActiva;
	private int diasUsada;
	private int descuento;
	private String tiempoContrato;
	
	//METODOS//
	
	public Oferta()
	{
		this.id=0;
		this.fechaFin=new Timestamp (0);
		this.fechaInicio=new Timestamp (0);
		this.diasActiva=0;
		this.diasUsada= 0;
		this.descuento=0;
		this.tiempoContrato="";
	}
	
	public Oferta( long id, Timestamp fin, Timestamp ini, int dia, int usada, int des,
			String tiem)
	{
		this.id=id;
		this.fechaFin=fin;
		this.fechaInicio=ini;
		this.diasActiva=dia;
		this.diasUsada=usada;
		this.descuento=des;
		this.tiempoContrato=tiem;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public Timestamp getFechaFin() {
		return fechaFin;
	}

	public void setFechaFin(Timestamp fechaFin) {
		this.fechaFin = fechaFin;
	}

	public Timestamp getFechaInicio() {
		return fechaInicio;
	}

	public void setFechaInicio(Timestamp fechaInicio) {
		this.fechaInicio = fechaInicio;
	}

	public int getDiasActiva() {
		return diasActiva;
	}

	public void setDiasActiva(int diasActiva) {
		this.diasActiva = diasActiva;
	}

	public int getDiasUsada() {
		return diasUsada;
	}

	public void setDiasUsada(int diasUsada) {
		this.diasUsada = diasUsada;
	}

	public int getDescuento() {
		return descuento;
	}

	public void setDescuento(int descuento) {
		this.descuento = descuento;
	}
	
	public String getTiempoContraro() {
		return tiempoContrato;
	}

	public void setTiempoContraro(String tiempoContraro) {
		this.tiempoContrato = tiempoContraro;
	}

	/** 
	 * @return Una cadena con la información básica
	 */
	@Override
	public String toString() 
	{
		return "Oferta [id=" + id + ", fechaInicio=" + fechaInicio + ", fechaFin=" + fechaFin + ", diasActiva="
				+ diasActiva + ", descuento=" + descuento+ ", tiempoContrato=" + tiempoContrato + "]";
	}
}
