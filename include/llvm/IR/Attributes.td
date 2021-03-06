/// Attribute base class.
class Attr<string S> {
  // String representation of this attribute in the IR.
  string AttrString = S;
}

/// Enum attribute.
class EnumAttr<string S> : Attr<S>;

/// StringBool attribute.
class StrBoolAttr<string S> : Attr<S>;

/// Target-independent enum attributes.

/// Alignment of parameter (5 bits) stored as log2 of alignment with +1 bias.
/// 0 means unaligned (different from align(1)).
def Alignment : EnumAttr<"align">;

/// inline=always.
def AlwaysInline : EnumAttr<"alwaysinline">;

/// Function can access memory only using pointers based on its arguments.
def ArgMemOnly : EnumAttr<"argmemonly">;

/// Callee is recognized as a builtin, despite nobuiltin attribute on its
/// declaration.
def Builtin : EnumAttr<"builtin">;

/// Pass structure by value.
def ByVal : EnumAttr<"byval">;

/// Marks function as being in a cold path.
def Cold : EnumAttr<"cold">;

/// Can only be moved to control-equivalent blocks.
def Convergent : EnumAttr<"convergent">;

/// Pointer is known to be dereferenceable.
def Dereferenceable : EnumAttr<"dereferenceable">;

/// Pointer is either null or dereferenceable.
def DereferenceableOrNull : EnumAttr<"dereferenceable_or_null">;

/// Function may only access memory that is inaccessible from IR.
def InaccessibleMemOnly : EnumAttr<"inaccessiblememonly">;

/// Function may only access memory that is either inaccessible from the IR,
/// or pointed to by its pointer arguments.
def InaccessibleMemOrArgMemOnly : EnumAttr<"inaccessiblemem_or_argmemonly">;

/// Pass structure in an alloca.
def InAlloca : EnumAttr<"inalloca">;

/// Source said inlining was desirable.
def InlineHint : EnumAttr<"inlinehint">;

/// Force argument to be passed in register.
def InReg : EnumAttr<"inreg">;

/// Build jump-instruction tables and replace refs.
def JumpTable : EnumAttr<"jumptable">;

/// Function must be optimized for size first.
def MinSize : EnumAttr<"minsize">;

/// Naked function.
def Naked : EnumAttr<"naked">;

/// Nested function static chain.
def Nest : EnumAttr<"nest">;

/// Considered to not alias after call.
def NoAlias : EnumAttr<"noalias">;

/// Callee isn't recognized as a builtin.
def NoBuiltin : EnumAttr<"nobuiltin">;

/// Function creates no aliases of pointer.
def NoCapture : EnumAttr<"nocapture">;

/// Call cannot be duplicated.
def NoDuplicate : EnumAttr<"noduplicate">;

/// Disable implicit floating point insts.
def NoImplicitFloat : EnumAttr<"noimplicitfloat">;

/// inline=never.
def NoInline : EnumAttr<"noinline">;

/// Function is called early and/or often, so lazy binding isn't worthwhile.
def NonLazyBind : EnumAttr<"nonlazybind">;

/// Pointer is known to be not null.
def NonNull : EnumAttr<"nonnull">;

/// The function does not recurse.
def NoRecurse : EnumAttr<"norecurse">;

/// Disable redzone.
def NoRedZone : EnumAttr<"noredzone">;

/// Mark the function as not returning.
def NoReturn : EnumAttr<"noreturn">;

/// Function doesn't unwind stack.
def NoUnwind : EnumAttr<"nounwind">;

/// opt_size.
def OptimizeForSize : EnumAttr<"optsize">;

/// Function must not be optimized.
def OptimizeNone : EnumAttr<"optnone">;

/// Function does not access memory.
def ReadNone : EnumAttr<"readnone">;

/// Function only reads from memory.
def ReadOnly : EnumAttr<"readonly">;

/// Return value is always equal to this argument.
def Returned : EnumAttr<"returned">;

/// Function can return twice.
def ReturnsTwice : EnumAttr<"returns_twice">;

/// Safe Stack protection.
def SafeStack : EnumAttr<"safestack">;

/// Sign extended before/after call.
def SExt : EnumAttr<"signext">;

/// Alignment of stack for function (3 bits)  stored as log2 of alignment with
/// +1 bias 0 means unaligned (different from alignstack=(1)).
def StackAlignment : EnumAttr<"alignstack">;

/// Stack protection.
def StackProtect : EnumAttr<"ssp">;

/// Stack protection required.
def StackProtectReq : EnumAttr<"sspreq">;

/// Strong Stack protection.
def StackProtectStrong : EnumAttr<"sspstrong">;

/// Hidden pointer to structure to return.
def StructRet : EnumAttr<"sret">;

/// AddressSanitizer is on.
def SanitizeAddress : EnumAttr<"sanitize_address">;

/// ThreadSanitizer is on.
def SanitizeThread : EnumAttr<"sanitize_thread">;

/// MemorySanitizer is on.
def SanitizeMemory : EnumAttr<"sanitize_memory">;

/// Function must be in a unwind table.
def UWTable : EnumAttr<"uwtable">;

/// Zero extended before/after call.
def ZExt : EnumAttr<"zeroext">;

/// Target-independent string attributes.
def LessPreciseFPMAD : StrBoolAttr<"less-precise-fpmad">;
def NoInfsFPMath : StrBoolAttr<"no-infs-fp-math">;
def NoNansFPMath : StrBoolAttr<"no-nans-fp-math">;
def UnsafeFPMath : StrBoolAttr<"unsafe-fp-math">;
