pub mod index;
pub use index::{Index, IndexView};

mod arith;
pub use arith::{AddAssign, DivAssign, MulAssign, RemAssign, SubAssign};
mod deref;
#[feature("deref_mut")]
pub use deref::DerefMut;
pub use deref::{Deref, SnapshotDeref};
mod range;
#[allow(unused_imports)]
// `RangeOp`, `RangeToInclusiveOp` are used internally by the compiler.
use range::{RangeOp, RangeToInclusiveOp};
pub use range::{Range, RangeIterator, RangeTrait};

mod function;
pub use function::{Fn, FnOnce};
