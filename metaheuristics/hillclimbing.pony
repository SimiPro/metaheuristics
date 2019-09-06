
trait Candidate 
trait CandidateFactory
    fun tweak(x: Candidate) : Candidate
    fun initialize() : Candidate
    

class ArrayCandidate is Candidate
    let x: Array[F32]
    new create(x' : Array[F32]) =>
        x = x'

class ArrayCandidateFactory is CandidateFactory
    fun tweak(x: Candidate) : Candidate =>
        var s = Array[F32].create(10)
        ArrayCandidate.create(s)

    fun initialize() : Candidate =>
        ArrayCandidate.create(Array[F32].create(10))



class Hillclimbing
    let y: U32
    let cf: CandidateFactory ref

    new ref create(cf' : CandidateFactory ref) =>
        y = 1
        cf = cf'

    fun climb() : Candidate =>
        var s: Candidate = cf.initialize()
        var counter : U32 = 1
        while counter <= 10 do
            var r: Candidate = cf.tweak(s)
            if quality_C(s) < quality_C(r) then
                s = r
            end
        end
        s

    
    fun quality_C(x: Candidate): F32 => 
        1
    
    fun tweak(x: Array[F32] box) : Array[F32] ref =>
        var s = Array[F32].create(10)
        s

    fun initialize() : Array[F32] ref =>
        Array[F32].create(10)
    
    fun quality(x: Array[F32] box): F32 => 
        1


        