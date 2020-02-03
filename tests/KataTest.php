<?php


namespace Kata\Test;

use Kata\Factorial;

use PHPUnit\Framework\TestCase;

class KataTest extends TestCase
{


    /** @test */
    public function send_one_and_return_one()
    {
        $kata = new Factorial();

        $this->assertEquals(1, $kata->checkNumber(1));
    }


}
