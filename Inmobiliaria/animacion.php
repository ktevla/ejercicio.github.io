<?php
// Tamaño de la animación en píxeles
$ancho = 400;
$alto = 400;

// Número de cuadros de la animación
$numCuadros = 10;

// Crear un arreglo para almacenar los cuadros de la animación
$cuadros = array();

for ($i = 0; $i < $numCuadros; $i++) {
    // Crear una nueva imagen en blanco para cada cuadro
    $imagen = imagecreatetruecolor($ancho, $alto);

    // Definir colores
    $colorFondo = imagecolorallocate($imagen, 255, 255, 255); // Fondo blanco
    $colorLinea = imagecolorallocate($imagen, 0, 0, 0); // Líneas en negro

    // Rellenar el fondo de la imagen
    imagefill($imagen, 0, 0, $colorFondo);

    // Dibujar un objeto en movimiento en cada cuadro de la animación
    $posX = ($i * ($ancho / $numCuadros));
    $posY = $alto / 2;
    $radio = 50;

    // Dibujar un círculo en la posición actual
    imagefilledellipse($imagen, $posX, $posY, $radio, $radio, $colorLinea);

    // Agregar el cuadro a la lista de cuadros de la animación
    $cuadros[] = $imagen;
}

// Crear una nueva imagen para la animación final
$animacion = new Imagick();

// Establecer la velocidad de la animación en milisegundos
$velocidad = 100;

// Agregar cada cuadro a la animación final
foreach ($cuadros as $cuadro) {
    $imagick = new Imagick();
    $imagick->readImageBlob(ob_get_clean());
    $animacion->addImage($imagick);
    $animacion->setImageDelay($velocidad);
    ob_start();
}

// Establecer el tipo de animación a GIF
$animacion->setFormat('gif');

// Guardar la animación en un archivo
$animacion->writeImages('animacion.gif', true);

echo "Animación creada correctamente.";
?>