process (clk) begin
  if rising_edge(clk) then
    if rst = '1' then
      count <= 0;
    else
      count <= count + 1;
    end if;
  end if;
end process;

-- Incorrect wait statement
wait until count = 10;
-- Should be wait for count = 10;