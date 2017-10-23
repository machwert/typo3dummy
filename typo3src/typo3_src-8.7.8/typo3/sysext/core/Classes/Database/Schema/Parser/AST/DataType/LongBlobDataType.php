<?php
declare(strict_types=1);

namespace TYPO3\CMS\Core\Database\Schema\Parser\AST\DataType;

/*
 * This file is part of the TYPO3 CMS project.
 *
 * It is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License, either version 2
 * of the License, or any later version.
 *
 * For the full copyright and license information, please read the
 * LICENSE.txt file that was distributed with this source code.
 *
 * The TYPO3 project - inspiring people to share!
 */

/**
 * Node representing the LONGBLOB SQL column type
 */
class LongBlobDataType extends BlobDataType
{
    /**
     * LongBlobDataType constructor.
     */
    public function __construct()
    {
        parent::__construct();

        // MySQL LONGBLOB can store 4GB of data, to be 32bit safe only claim 2GB
        $this->length = 2147483647;
    }
}
