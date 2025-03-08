{
  services.syncthing = {
    enable = true;
    extraOptions = ''
      <folders>
        	<folder id="default-folder-id" label="Sync" path="/home/edu/Sync" ...
        	</folder>
      </folders>
    '';
  };
}
