<?php

namespace ToolBox\FileBrowserBundle\Twig;

use Symfony\Component\DependencyInjection\Container;

class AppExtension extends \Twig_Extension
{
    private $container;
    private $rootDir;

    public function __construct(Container $container)
    {
        $this->container = $container;
        $this->rootDir = $this->container->get('kernel')->getRootDir() . '/../web';
    }

    public function getFilters()
    {
        return array(
            new \Twig_SimpleFilter('file_exists', array($this, 'fileExists')),
            new \Twig_SimpleFilter('json_decode', array($this, 'jsonDecode')),
            new \Twig_SimpleFilter('get_thumb', array($this, 'getThumb')),
            new \Twig_SimpleFilter('get_mim_Type', array($this, 'getMimType')),
        );
    }

    public function fileExists($path)
    {
        return file_exists($this->rootDir.$path);
    }

    public function jsonDecode($json){
        return json_decode($json, true);
    }

    public function getThumb($path, $noImagePath = null){

        $dirName = dirname($path);
        $imageName = basename($path);
        $thumbName = $dirName.'/thumb/'.$imageName;

        if(file_exists($this->rootDir.$thumbName)){
            return $thumbName;
        } else {
            if(file_exists($this->rootDir.$noImagePath)){
                return $noImagePath;
            } else {
                return $path;
            }
        }

    }

    public function getMimType($value){

         $fileToIcon = array(
            'image/tiff'                   => array('type' => 'other', 'icon' => 'tiff.png', 'displayName' => 'TIFF'),
            'image/x-tiff'                 => array('type' => 'other', 'icon' => 'tiff.png', 'displayName' => 'TIFF'),
            'image/tiff'                   => array('type' => 'other', 'icon' => 'tiff.png', 'displayName' => 'TIFF'),
            'image/x-tiff'                 => array('type' => 'other', 'icon' => 'tiff.png', 'displayName' => 'TIFF'),
            'application/octet-stream'     => array('type' => 'other', 'icon' => 'psd.png', 'displayName'  => 'PSD'),
            'application/pdf'              => array('type' => 'other', 'icon' => 'pdf.png', 'displayName'  => 'PDF'),
            'application/postscript'       => array('type' => 'other', 'icon' => 'ai.png', 'displayName'   => 'AI'),
            'application/x-troff-msvideo'  => array('type' => 'other', 'icon' => 'avi.png', 'displayName'  => 'AVI'),
            'video/avi'                    => array('type' => 'other', 'icon' => 'avi.png', 'displayName'  => 'AVI'),
            'video/mp4'                    => array('type' => 'other', 'icon' => 'mp4.png', 'displayName'  => 'MP4'),
            'video/msvideo'                => array('type' => 'other', 'icon' => 'avi.png', 'displayName'  => 'AVI'),
            'video/x-msvideo'              => array('type' => 'other', 'icon' => 'avi.png', 'displayName'  => 'AVI'),
            'application/msword'           => array('type' => 'other', 'icon' => 'doc.png', 'displayName'  => 'DOC'),
            'text/html'                    => array('type' => 'other', 'icon' => 'html.png', 'displayName' => 'HTML'),
            'application/x-javascript'     => array('type' => 'other', 'icon' => 'js.png',  'displayName'  => 'JS'),
            'application/javascript'       => array('type' => 'other', 'icon' => 'js.png',  'displayName'  => 'JS'),
            'application/ecmascript'       => array('type' => 'other', 'icon' => 'js.png',  'displayName'  => 'JS'),
            'text/javascript'              => array('type' => 'other', 'icon' => 'js.png',  'displayName'  => 'JS'),
            'text/ecmascript'              => array('type' => 'other', 'icon' => 'js.png',  'displayName'  => 'JS'),
            'video/quicktime'              => array('type' => 'other', 'icon' => 'mov.png', 'displayName'  => 'MOV'),
            'audio/mpeg3'                  => array('type' => 'other', 'icon' => 'mp3.png', 'displayName'  => 'MP3'),
            'audio/x-mpeg-3'               => array('type' => 'other', 'icon' => 'mp3.png', 'displayName'  => 'MP3'),
            'video/mpeg'                   => array('type' => 'other', 'icon' => 'mp3.png', 'displayName'  => 'MP3'),
            'video/x-mpeg'                 => array('type' => 'other', 'icon' => 'mp3.png', 'displayName'  => 'MP3'),
            'text/plain'                   => array('type' => 'other', 'icon' => 'txt.png', 'displayName'  => 'TXT'),
            'application/excel'            => array('type' => 'other', 'icon' => 'xls.png', 'displayName'  => 'XLS'),
            'application/vnd.ms-excel'     => array('type' => 'other', 'icon' => 'xls.png', 'displayName'  => 'XLS'),
            'application/x-excel'          => array('type' => 'other', 'icon' => 'xls.png', 'displayName'  => 'XLS'),
            'application/x-msexcel'        => array('type' => 'other', 'icon' => 'xls.png', 'displayName'  => 'XLS'),
            'application/zip'              => array('type' => 'other', 'icon' => 'zip.png', 'displayName'  => 'ZIP'),
            'application/x-rar'            => array('type' => 'other', 'icon' => 'rar.png', 'displayName'  => 'RAR'),
        );


        $filetype = mime_content_type($this->rootDir . '/../web'.$value);

        $icon = 'unknown.png';
        if (isset($fileToIcon[$filetype])) {
            $icon = $fileToIcon[$filetype]['icon'];
            return $icon;
        }else{
            return $value;
        }

    }

}