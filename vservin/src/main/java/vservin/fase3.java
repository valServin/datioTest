import java.io.File;
import java.util.Scanner;

public class fase3 {

	public static void main(String[] args) {

		File archivo = new File(args[0]);
		Scanner s = null;
		int multi = 0;
		long inicio = System.currentTimeMillis();

		try {
			System.out.println("\n... Buscando en el archivo las lineas que contengan la palabra Multi-Family ...\n");
			s = new Scanner(archivo);

			while (s.hasNextLine()) {
				String linea = s.nextLine();
				if (linea.contains("Multi-Family")) {
					System.out.println(linea);
				        multi++;
				}
			}

			System.out.println("\nLa palabra Multi-Family aparece un total de: "+multi);

		} catch (Exception ex) {
			System.out.println("Mensaje: " + ex.getMessage());
		} finally {
			// Cerramos el fichero tanto si la lectura ha sido correcta o no
			try {
				if (s != null)
					s.close();
			} catch (Exception ex2) {
				System.out.println("Mensaje 2: " + ex2.getMessage());
			}
		}
        	long fin = System.currentTimeMillis();
        	long total = fin - inicio;
	        System.out.println("\nTotal de milisegundos en Ejecucion: "+total);

	}
}
