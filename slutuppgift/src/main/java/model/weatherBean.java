package model;

public class weatherBean {
	
	private String cityStr;

	private String countryStr;

	private String cloudsStr;
	
	private String humidityStr;
	
	private String dateStr;
	
	private String imgStr;
	
	private Double temprature;

	public weatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

	public String getCityStr() {
		return cityStr;
	}

	public String getCountryStr() {
		return countryStr;
	}

	public String getCloudsStr() {
		return cloudsStr;
	}

		public void setCloudsStr(String cloudsStr) {
		this.cloudsStr = cloudsStr;
	}

	public String getHumiditystr() {
		return humidityStr;
	}	
	
	public void setHumidityStr(String humidityStr) {
		this.humidityStr = humidityStr + "%";
	}
	
	public String getDateStr() {
		return dateStr;
	}
	
	public void setDateStr(String dateStr) {
		this.dateStr = dateStr;
	}
	
	
	public String getImg() {
		return imgStr;
	}
	
	public void setImg(String imgStr) {
		this.imgStr = imgStr;
	}
	
	public double getTemprature() {
		return temprature;
	}
	
	public void setTemprature(Double temprature) {
		this.temprature = temprature - 273.15;
	}
}
