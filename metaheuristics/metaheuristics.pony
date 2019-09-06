/*
trait Initializable
trait Tweakable

trait InitializableFactory
    fun initialize(): Initializable ref

trait TweakableFactory
    fun tweak(obj: Tweakable box): Tweakable iso

type CandidateFactory is (InitializableFactory & TweakableFactory)

type Candidate is (Initializable & Tweakable)
*/

    