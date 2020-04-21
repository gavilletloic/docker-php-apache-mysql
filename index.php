<?php

//Servername must be MySQL container name or container ID
$servername = 'mysql_container';
$username = 'loic';
$password = 'changeMe';
$database = 'laravel';

$conn = connectDB($servername, $username, $password, $database);

//Load and display countries
$countryList = getAllCountries($conn);
displayCountries($countryList);


mysqli_close($conn);


//Database functions
function connectDB($server, $user, $password, $db)
{
    $conn = mysqli_connect($server, $user, $password, $db);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $conn;
}

function query($link, $query)
{
    $result = mysqli_query($link, $query);
    if (!$result) {
        echo "ERROR: Could not able to execute $query.<br/> "
            . mysqli_error($link) . "<br/>";
    }

    return $result;
}

function getResultInArray($result)
{
    $collection = array();
    while ($data = mysqli_fetch_assoc($result)) {
        $collection[] = $data;

    }
    return $collection;
}

//Get all countries
function getAllCountries($conn)
{
    $query = "SELECT id, code, description
    FROM countries";
    $result = query($conn, $query);
    return getResultInArray($result);
}

//Delete column HS_UID in every tables
function displayCountries($countryList)
{
    foreach ($countryList as $key => $data) {
        $id = $data['id'];
		$code = $data['code'];
		$description = $data['description'];
		echo "<p>{$id} - {$code} - {$description}</p>";
    }
}