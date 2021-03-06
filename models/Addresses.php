<?php

/**
 * Class Addresses
 */
class Addresses
{

    public static function getAddresses($term = '')
    {
        $connection = Db::getConnection();

        $result = null;

        if (!empty($term)) {
            $term = trim(mysqli_real_escape_string($connection, $term));

            $term = str_replace(' ', '* ', $term) . '*';

            $fullTextSearchSql = "SELECT * FROM addresses
    WHERE MATCH(addresses_address,addresses_street) AGAINST('{$term}'IN BOOLEAN MODE)";

            $result = $connection->query($fullTextSearchSql);

            if ($result) {
                $result = $result->fetch_all(MYSQLI_ASSOC);

                return $result;
            }
        }

        $connection->close();
    }

    public static function checkResultExist($id)
    {
        $resultId = null;
        $connection = Db::getConnection();

        if ($id) {
            $id = (int) $id;

            $sql = "SELECT id, addresses_street FROM addresses WHERE id = $id";

            $res = mysqli_query($connection, $sql);
            $result = mysqli_fetch_assoc($res);
        }

        return $result;
    }

    public static function getOthers($id)
    {
        $result = null;
        $connection = Db::getConnection();

        if (isset($id)) {
            $id = (int) $id;

            $sql = "SELECT id, addresses_street, addresses_address FROM addresses WHERE id != $id";

            $result = mysqli_query($connection, $sql);
            $addresses = mysqli_fetch_all($result, MYSQLI_ASSOC);

        }
        return $addresses;
    }
}