<?php

namespace app\data;

use App\Models\Libro;
use mysqli;

class DataContext
{
    static $mysqli;
    private array $settings;

    public function __construct(array $settings)
    {
        $this->settings = $settings;
        self::conectar();
    }

    public function __destruct()
    {
        self::$mysqli->close();
    }

    protected function conectar()
    {
        self::$mysqli = new mysqli(
            $this->settings['db']['host'],
            $this->settings['db']['username'], // Cambiado de 'database' a 'username'
            $this->settings['db']['password'], // Cambiado de 'database' a 'password'
            $this->settings['db']['database']
        );

        if(self::$mysqli->connect_error){
            die('Error de conexión ('. self::$mysqli->connect_errno . ')' . self::$mysqli->connect_error);
        }
    }

    public function obten_libros()
    {
        $consulta = 'SELECT libro.id, libro.nombre, libro.precio, editorial.nombre AS editorial_nombre FROM editorial INNER JOIN libro ON editorial.id = libro.id_editorial';

        $sentencia = self::$mysqli->prepare($consulta);

        $sentencia->execute();
        $resultado = $sentencia->get_result();
        $sentencia->close();

        $libros = [];
        while ($fila = $resultado->fetch_assoc()):
            $item = new Libro($fila["id"], $fila["nombre"], $fila["precio"], $fila["editorial_nombre"]);
            $libros[] = $item->jsonSerialize();
        endwhile;

        return $libros;
    }

}
