package Metodo;

public class CuentaBancaria {

    
    private int numeroCuenta;
    private long dniCliente;
    private double saldoActual;
    private String nombre;

    public CuentaBancaria() {
    }

    public CuentaBancaria(String nombre, int numeroCuenta, long dniCliente, double saldoActual) {
        this.nombre = nombre;
        this.numeroCuenta = numeroCuenta;
        this.dniCliente = dniCliente;
        this.saldoActual = saldoActual;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    public int getNumeroCuenta() {
        return numeroCuenta;
    }

    public void setNumeroCuenta(int numeroCuenta) {
        this.numeroCuenta = numeroCuenta;
    }

    public long getDniCliente() {
        return dniCliente;
    }

    public void setDniCliente(long dniCliente) {
        this.dniCliente = dniCliente;
    }

    public double getSaldoActual() {
        return saldoActual;
    }

    public void setSaldoActual(double saldoActual) {
        this.saldoActual = saldoActual;
    }
    @Override
    public String toString() {
        return "CuentaBancaria{" + "numeroCuenta=" + numeroCuenta + ", dniCliente=" + dniCliente + ", saldoActual=" + saldoActual + ", nombre=" + nombre + '}';
    }
}

