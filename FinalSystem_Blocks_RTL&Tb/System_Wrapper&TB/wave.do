onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {TB Signals} /system_tb/reset_n_tb
add wave -noupdate -expand -group {TB Signals} -color Blue /system_tb/UART_clk_tb
add wave -noupdate -expand -group {TB Signals} -color Cyan /system_tb/REF_clk_tb
add wave -noupdate -expand -group {TB Signals} /system_tb/UART_rx_in_tb
add wave -noupdate -expand -group {TB Signals} /system_tb/UART_tx_out_tb
add wave -noupdate -expand -group {TB Signals} /system_tb/parity_error_tb
add wave -noupdate -expand -group {TB Signals} /system_tb/framing_error_tb
add wave -noupdate -expand -group {TB Signals} /system_tb/error_count
add wave -noupdate -expand -group UART -color Blue /system_tb/dut_system_top/dut_UART/clk_tx
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/tx_p_data
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/tx_data_valid
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/reset
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/parity_type
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/parity_enable
add wave -noupdate -expand -group UART -color Blue /system_tb/dut_system_top/dut_UART/clk_rx
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/rx_in
add wave -noupdate -expand -group UART -radix unsigned /system_tb/dut_system_top/dut_UART/prescale
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/tx_data_out
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/tx_busy
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/rx_p_data_out
add wave -noupdate -expand -group UART -color {Blue Violet} /system_tb/dut_system_top/dut_UART/rx_data_valid
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/parity_error
add wave -noupdate -expand -group UART /system_tb/dut_system_top/dut_UART/framing_error
add wave -noupdate -expand -group {Register file} -color Blue /system_tb/dut_system_top/dut_register_file/clk
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/rst_n
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/wr_en
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/rd_en
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/address
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/wr_data
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/rd_data
add wave -noupdate -expand -group {Register file} /system_tb/dut_system_top/dut_register_file/rd_data_valid
add wave -noupdate -expand -group {Register file} -expand /system_tb/dut_system_top/dut_register_file/reg_file
add wave -noupdate -expand -group {CLK DIV MUX} /system_tb/dut_system_top/dut_CLOCK_DIVIDER_MUX/in
add wave -noupdate -expand -group {CLK DIV MUX} /system_tb/dut_system_top/dut_CLOCK_DIVIDER_MUX/out
add wave -noupdate -expand -group {TX CLK DIV} /system_tb/dut_system_top/dut_TX_CLOCK_DIVIDER/clk_ref
add wave -noupdate -expand -group {TX CLK DIV} /system_tb/dut_system_top/dut_TX_CLOCK_DIVIDER/rst_n
add wave -noupdate -expand -group {TX CLK DIV} /system_tb/dut_system_top/dut_TX_CLOCK_DIVIDER/clk_en
add wave -noupdate -expand -group {TX CLK DIV} -radix decimal /system_tb/dut_system_top/dut_TX_CLOCK_DIVIDER/div_ratio
add wave -noupdate -expand -group {TX CLK DIV} /system_tb/dut_system_top/dut_TX_CLOCK_DIVIDER/div_clk
add wave -noupdate -expand -group {RX CLK DIV} /system_tb/dut_system_top/dut_Clock_Divider_RX/clk_ref
add wave -noupdate -expand -group {RX CLK DIV} /system_tb/dut_system_top/dut_Clock_Divider_RX/rst_n
add wave -noupdate -expand -group {RX CLK DIV} /system_tb/dut_system_top/dut_Clock_Divider_RX/clk_en
add wave -noupdate -expand -group {RX CLK DIV} -radix decimal /system_tb/dut_system_top/dut_Clock_Divider_RX/div_ratio
add wave -noupdate -expand -group {RX CLK DIV} /system_tb/dut_system_top/dut_Clock_Divider_RX/div_clk
add wave -noupdate -expand -group {UART RX} -color Blue /system_tb/dut_system_top/dut_UART/dut_UART_RX/clk
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/reset
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/rx_in
add wave -noupdate -expand -group {UART RX} -radix unsigned /system_tb/dut_system_top/dut_UART/dut_UART_RX/prescale
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/parity_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/parity_type
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/data_valid
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/p_data
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/parity_error
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/framing_error
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/data_sampling_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/bit_count
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/edge_count
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/sampled_bit
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/start_glitch
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/deserializer_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/edge_bit_counter_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/parity_check_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/start_check_enable
add wave -noupdate -expand -group {UART RX} /system_tb/dut_system_top/dut_UART/dut_UART_RX/stop_check_enable
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/p_data
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/data_valid
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/parity_en
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/parity_typ
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/clk
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/reset_n
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/tx_out
add wave -noupdate -expand -group {TX UART} -color {Medium Violet Red} /system_tb/dut_system_top/dut_UART/dut_UART_TX/busy
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/serial_en
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/serial_done
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/mux_sel
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/serial_data
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/parity_bit
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/valid_to_capture
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/start_bit
add wave -noupdate -expand -group {TX UART} /system_tb/dut_system_top/dut_UART/dut_UART_TX/stop_bit
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_clk
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_reset_n
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_inc
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_data
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_clk
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_reset_n
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_inc
add wave -noupdate -expand -group {Async FIFO} -color Magenta /system_tb/dut_system_top/dut_Async_fifo/full
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/empty
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_data
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_addr
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_addr
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/w_ptr
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/r_ptr
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/rq2_wptr
add wave -noupdate -expand -group {Async FIFO} /system_tb/dut_system_top/dut_Async_fifo/wq2_rptr
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3495856945 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {3495498169 ps} {3496465849 ps}
