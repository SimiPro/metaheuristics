use "debug"
use "ponytest"
use ".."

class iso _TestHillclimber is UnitTest
    fun name(): String => "Test Hillclimber"

    fun apply(h: TestHelper) =>
        let cf:ArrayCandidateFactory = ArrayCandidateFactory.create()
        let hillclimbing = Hillclimbing.create(cf)