namespace QuanLyNhaSach.DTO
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("CALAMVIEC")]
    public partial class CaLamViec
    {
        public CaLamViec()
        {
            DSBangCC = new HashSet<BangChamCong>();
        }

        [Key]
        [StringLength(20)]
        public string MaCaLamViec { get; set; }

        public DateTime? ThoiGianBD { get; set; }

        public DateTime? ThoiGianKT { get; set; }

        [Column(TypeName = "money")]
        public decimal? LuongCLV { get; set; }

        public virtual ICollection<BangChamCong> DSBangCC { get; set; }
    }
}
