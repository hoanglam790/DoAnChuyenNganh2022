//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAppQuanLyBongDa.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class DICHVU
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DICHVU()
        {
            this.CHITIET_DICHVU = new HashSet<CHITIET_DICHVU>();
            this.CHITIET_PHIEUDATSAN = new HashSet<CHITIET_PHIEUDATSAN>();
        }
    
        public int MADICHVU { get; set; }
        public string TENDICHVU { get; set; }
        public int GIATIEN { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIET_DICHVU> CHITIET_DICHVU { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CHITIET_PHIEUDATSAN> CHITIET_PHIEUDATSAN { get; set; }
    }
}
