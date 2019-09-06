
trait Candidate 
trait CandidateFactory
    fun tweak(x: Candidate box) : Candidate ref
    fun initialize() : Candidate ref

class ArrayCandidate is Candidate
    let x: Array[F32] trn
    new create(x' : Array[F32] trn) =>
        x = consume x'

class ArrayCandidateFactory is CandidateFactory
    fun tweak(x: Candidate box) : Candidate ref =>
        var s = Array[F32].create(10)
        ArrayCandidate.create(s)

    fun initialize() : Candidate ref =>
        ArrayCandidate.create(Array[F32].create(10))




class Hillclimbing
    let y: U32

    new ref create() =>
        y = 1

    fun climb() : Array[F32] =>
        var s = initialize()
        var counter : U32 = 1
        while counter <= 10 do
            var r = tweak(s)
            if quality(s) < quality(r) then
                s = r
            end
        end
        s
    
    fun tweak(x: Array[F32] box) : Array[F32] ref =>
        var s = Array[F32].create(10)
        s

    fun initialize() : Array[F32] ref =>
        Array[F32].create(10)
    
    fun quality(x: Array[F32] box): F32 => 
        1

        