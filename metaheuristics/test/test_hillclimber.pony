use "debug"
use "ponytest"
use ".."

class iso _TestHillclimber is UnitTest
    fun name(): String => "Test Hillclimber"

    fun apply(h: TestHelper) =>
        let hillclimbing = Hillclimbing.create()