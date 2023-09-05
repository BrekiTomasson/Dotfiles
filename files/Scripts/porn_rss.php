<?php

declare(strict_types=1);

$url = 'https://rss.knaben.eu//5000000';

// Read the XML file content
$xmlContent = file_get_contents($url);

// Disable the handling of CDATA tags
$options = LIBXML_NOCDATA;

// Load the XML content and convert it to SimpleXMLElement object
$xml = simplexml_load_string($xmlContent, 'SimpleXMLElement', $options);

// Convert the XML object to an array
$xmlArray = json_decode(json_encode($xml), true);

// Regular expression pattern to match magnet links
$pattern = '/"(magnet:\?xt=urn:btih:.*?)"/';

// Now you have the XML data in an array format
foreach ($xmlArray['channel']['item'] as $key => $item) {
    if (preg_match($pattern, $item['description'], $matches)) {
        $xmlArray['channel']['item'][$key]['link'] = $matches[1];
        $xmlArray['channel']['item'][$key]['description'] = '';
    } else {
        unset($xmlArray['channel']['item'][$key]);
    }
}

$rss = new SimpleXMLElement('<rss></rss>');
$rss->addAttribute('version', '2.0');

$channel = $rss->addChild('channel');
$channel->addChild('title', $xmlArray['channel']['title']);
$channel->addChild('link', $xmlArray['channel']['link']);
$channel->addChild('description', $xmlArray['channel']['description']);

foreach ($xmlArray['channel']['item'] as $item) {
    $itemElement = $channel->addChild('item');
    $itemElement->addChild('title', htmlspecialchars(html_entity_decode($item['title'], ENT_QUOTES, 'UTF-8')));
    $itemElement->addChild('link', htmlentities($item['link']));
    $itemElement->addChild('description', $item['description']);
    $itemElement->addChild('pubDate', $item['pubDate']);
}

// Format the XML with indentation
$dom = new DOMDocument('1.0');
$dom->preserveWhiteSpace = false;
$dom->formatOutput = true;
$dom->loadXML($rss->asXML());

// Get the formatted XML as a string
$xmlString = $dom->saveXML();

// Print the generated RSS feed
echo $xmlString;
