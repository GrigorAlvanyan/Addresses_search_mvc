<?php


class Search
{

    public static function result($resultId, $addresses)
    {
        $tableAddressesHtml = [];

        if (!isset($addresses) || count($addresses) === 0) {
            return $tableAddressesHtml;
        }

        foreach ($addresses as $address) {
            $addressName = $address['addresses_street'] . " " . $address['addresses_address'];
            $distance = Distance::getDistance($resultId['id'], $address['id']);

            $td = '';


            if ($distance < 5) {
                $td .= "<td data-distance='$distance'>$addressName ($distance km)</td>";
            } else {
                $td .= "<td data-distance=''></td>";
            }

            if ($distance >= 5 && $distance <= 30) {
                $td .= "<td data-distance='$distance'>$addressName ($distance km)</td>";
            } else {
                $td .= "<td data-distance=''></td>";
            }

            if ($distance > 30) {
                $td .= "<td data-distance='$distance'>$addressName ($distance km)</td>";
            } else {
                $td .= "<td data-distance=''></td>";
            }

            $tableAddressesHtml .= "<tr>$td</tr>";
        }

        return $tableAddressesHtml;
    }

}